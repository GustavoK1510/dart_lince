import 'dart:math';

void main() {
  Random random = Random();
  final int n = random.nextInt(1001 - 100) + 100;
  final resultado = somador(n);
  print('O resultado da soma dos números pares entre 0 e $n é: $resultado');
}

int somador(int n) {
  int soma = 0;
  for (int i = 0; i <= n; i++) {
    if (i % 2 == 0) {
      soma += i;
    }
  }
  return soma;
}