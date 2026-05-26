void main() {
  int valor1 = 4;
  int valor2 = 7;

  print(verificador(valor1));
  print(verificador(valor2));
}

String verificador(int valor) {
  try {
    if (valor % 2 != 0) {
      throw ValorImparException();
    }
    return "Entrada correta, você inseriu um número par.";
  } catch (e) {
    return e.toString();
  }
}

class ValorImparException implements Exception {
  String toString() {
    return "Exception: Entrada inválida. Insira apenas números pares.";
  }
}