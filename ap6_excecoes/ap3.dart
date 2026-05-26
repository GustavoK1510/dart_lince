import 'dart:math';

abstract class Forma {
  void calcularArea();
}

class Retangulo implements Forma {
  int _base;
  int _altura;

  Retangulo(this._base, this._altura);

  get base => _base;
  set base(int value) => _base = value;

  get altura => _altura;
  set altura(int value) => _altura = value;

  @override
  void calcularArea() {
    print("Área do retângulo: ${_base * _altura}");
  }
}

class ValoresInvalidosException implements Exception {
  String toString() {
    return "Exception: Dimensões inválidas, informe apenas valores positivos maiores que zero.";
  }
}

void main() {
  Random random = Random();
  int base = random.nextInt(99);
  int altura = random.nextInt(99);

  try {
    if (base <= 0 || altura <= 0) {
      throw ValoresInvalidosException();
    }
    Retangulo retangulo = Retangulo(base, altura);
    retangulo.calcularArea();
  } catch (e) {
    print(e.toString());
  }
}
