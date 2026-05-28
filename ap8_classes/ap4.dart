import 'dart:math';

abstract class Calculadora {
  static void dobro(int numero) {
    print("O dobro de $numero é: ${numero * 2}");
  }
}

void main() {
  Random random = Random();
  int numero = random.nextInt(100);
  Calculadora.dobro(numero);
}