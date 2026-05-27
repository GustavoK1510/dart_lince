class Retangulo {
  double base;
  double altura;

  Retangulo(this.base, this.altura);

  void calcularArea() {
    print('Área do retângulo: ${base * altura}');
  }
}

void main() {
  Retangulo retangulo = Retangulo(10, 9.9999999999);
  retangulo.calcularArea();
}