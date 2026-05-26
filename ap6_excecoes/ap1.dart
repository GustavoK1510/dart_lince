void main() {
  String valor1 = "123";
  String valor2 = "abc";

  print(conversor(valor1));
  print(conversor(valor2));
}

String conversor(String valor) {
  try {
    int numero = int.parse(valor);
    return "Número digitado: $numero";
  } catch (e) {
    return "Entrada inválida. Digite apenas números inteiros.";
  }
}