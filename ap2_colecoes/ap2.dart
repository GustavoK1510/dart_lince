import 'dart:math';

void main() {
  Random random = Random();
  
  final List<int> numeros = List.generate(50, (_) => random.nextInt(15));

  print("Lista original: $numeros");

  numeros.removeWhere((x) => x % 2 == 0);
  print("Lista atualizada: $numeros");
}