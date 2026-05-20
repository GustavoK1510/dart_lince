import 'dart:math';

void main() {
  Random random = Random();

  final List<int> numeros = List.generate(50, (_) => random.nextInt(21 - 10 +1) + 10);
  
  print("Lista original: $numeros");

  final List<int> semDuplicados = numeros.toSet().toList();
  print("Itens únicos: $semDuplicados");
}