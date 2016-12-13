// Analog switch control pins (active-HIGH)
const byte pin_switch_en_a = 5;  // D5: Connects integrator input to input current
const byte pin_switch_en_b = 12; // D12: Connects integrator input to reference current
// Comparator input pin
const byte pin_comp_in = 2; // D2: INT0

const uint16_t ramp_up_delta_t_us = 5000;

unsigned long ramp_down_start_time_us = 0;
unsigned long ramp_down_end_time_us = 0;
unsigned long ramp_down_delta_t_us = 0;

void setup() {
  // Configure IO pins
  pinMode( pin_switch_en_a, OUTPUT );  // Switch A enable
  pinMode( pin_switch_en_b, OUTPUT );  // Switch B enable
  pinMode( pin_comp_in, INPUT );       // Output from comparator

  // Configure an interrupt to call isr_comp_in() on a falling edge at pin_comp_in
  attachInterrupt( digitalPinToInterrupt( pin_comp_in ), isr_comp_in, FALLING );

  // Configure the USB serial port for reporting conversion results at 9600 baud
  Serial.begin( 9600 );

  // Ramp the integrator all the way up so that the ADC can start
  // even if the integrator initial condition is negative
  digitalWrite( pin_switch_en_a, LOW );
  digitalWrite( pin_switch_en_b, HIGH );
  delay( 500 );

  // Now start the first ramp-down
  digitalWrite( pin_switch_en_a, HIGH );
  digitalWrite( pin_switch_en_b, LOW );
}

void loop() {
  // Sample most-recent ramp times while preventing the comparator interrupt from firing
  cli();  // Disable interrupts
  unsigned long ramp_down_delta_t_us_sample = ramp_down_delta_t_us;
  unsigned long ramp_down_start_time_us_sample = ramp_down_start_time_us;
  unsigned long ramp_down_end_time_us_sample = ramp_down_end_time_us;
  sei();  // Enable interrupts
  
  // Print the latest result roughly once per second
  Serial.print( "Ramp-down delta t (us): " );
  Serial.println( ramp_down_delta_t_us_sample );
  Serial.print( "Ramp down start: " );
  Serial.println( ramp_down_start_time_us_sample );
  Serial.print( "Ramp down end: " );
  Serial.println( ramp_down_end_time_us_sample );
  Serial.print( "Temperature: " );
  Serial.println( calculate_temperature( ramp_down_delta_t_us_sample ) );
  delay( 1000 );  // Do nothing for 1000 milliseconds
}

// Comparator interrupt: 
//    Fires whenever the comparator output transistions from HIGH to LOW.
//    This occurs when the integrator ramp-down crosses the reference voltage.
void isr_comp_in() {
  cli();  // Disable interrupts
  // Stop the integrator ramp-down
  digitalWrite( pin_switch_en_a, LOW );

  // Figure out the ramp-down time
  ramp_down_end_time_us = micros();
  ramp_down_delta_t_us = ramp_down_end_time_us - ramp_down_start_time_us;
  
  // Start the integrator ramp-up
  digitalWrite( pin_switch_en_b, HIGH );

  // Integrate the known current for a known amount of time
  delayMicroseconds( ramp_up_delta_t_us );

  // Stop the integrator ramp-up
  digitalWrite( pin_switch_en_b, LOW );
  // Start the integrator ramp-down;
  digitalWrite( pin_switch_en_a, HIGH );

  ramp_down_start_time_us = micros();

  EIFR = 0x01; // Clear any pending interrupts on INT0 (useful when you implement en_c)
  sei(); // Enable interrupts
}

// Uses the calibration curve to calculate the temperature
float calculate_temperature( unsigned long ramp_down_delta_t_us ) {
  // Implement your curve fit here so you can directly measure temperature over USB
  return 0.0;
}
