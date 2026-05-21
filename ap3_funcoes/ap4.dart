import 'dart:math';

void main() {
  Random random = Random();
  List<int> temperaturas = List.generate(15, (_) => random.nextInt(5000 - 1 + 1) + 1);
}