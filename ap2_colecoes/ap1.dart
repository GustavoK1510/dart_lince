import 'dart:math';

void main() {
  Random random = Random();
  
  final List<int> numeros = List.generate(10, (_) => random.nextInt(100));

  for (int i = 0; i < numeros.length; i++) {
    print("Posição: $i, Valor: ${numeros[i]}");
  }
}