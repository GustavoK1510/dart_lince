void main() {
  const valorProduto = 100;
  const valorPago = 80;
  final resultado = descontador(valorProduto, valorPago);
  print(resultado);
}

String descontador(int valorProduto, int valorPago) {
  final dif = valorProduto - valorPago;
  final porcentagem = (dif / valorProduto) * 100;
  return 'O produto custava $valorProduto reais, foi vendido por $valorPago reais. O desconto dado foi ${porcentagem.toStringAsFixed(0)}%.';
}