import 'dart:math';

void main() {
  Random random = Random();
  List<int> raios = List.generate(5, (_) => random.nextInt(100) + 1);
  for (int raio in raios) {
    print('Raio: $raio, área: ${area(raio).toStringAsFixed(2)}, perímetro: ${perimetro(raio).toStringAsFixed(2)}');
  }
}

num area(int raio) {
  return pi * pow(raio, 2);
}

num perimetro(int raio) {
  return 2 * pi * raio;
}