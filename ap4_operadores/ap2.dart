void main() {
final textos = ['10', '2XXL7', 'JOJ0', '99', '381', 'AD44', '47', '2B', '123', '78'];
final numeros = conversor(textos);
print('Lista convertida: ${numeros.join(', ')}');
}

List<int> conversor(List<String> valores) {
  final List<int> resultado = [];

  for (int i = 0; i < valores.length; i++) {
    int? convertido = int.tryParse(valores[i]);
    convertido ??= 0;
    resultado.add(convertido);
  }
  return resultado;
}