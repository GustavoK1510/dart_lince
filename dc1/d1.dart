import 'dart:math';

void calcularCirculo(List<double> raios) {
  for (double raio in raios) {
    double area = pi * pow(raio, 2);
    double perimetro = 2 * pi * raio;
    print('Raio: $raio, Área: ${area.toStringAsFixed(2)}, Perímetro: ${perimetro.toStringAsFixed(2)}');
  }
}

void main() {
  List<double> raios = [5, 8, 12, 7.3, 18, 2, 25];
  calcularCirculo(raios);
}