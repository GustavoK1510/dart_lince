void main() {
  int numero = 10;
  List<int> numerosImpares = impares(numero);
  for (int impar in numerosImpares) {
    print('Ímpar: $impar');
  }
}

List<int> impares(int numero) {
  List<int> resultado = [];
  for (int i = 1; i <= numero; i++) {
    if (i % 2 != 0) {
      resultado.add(i);
    }
  }
  return resultado;
}