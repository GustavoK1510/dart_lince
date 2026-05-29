void calcularFahrenheiteKelvin(List<double> temperaturas) {
  for (double temp in temperaturas) {
    double fahrenheit = (temp * 9 / 5) + 32;
    double kelvin = temp + 273.15;
    print('Celsius: $temp °C, Fahrenheit: ${fahrenheit.toStringAsFixed(2)} °F, Kelvin: ${kelvin.toStringAsFixed(2)} K');
  }
}

void main() {
  List<double> temperaturas = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];
  calcularFahrenheiteKelvin(temperaturas);
}