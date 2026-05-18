import 'dart:math';
void main(){
  Random random = Random();

  int n1 = random.nextInt(100) + 1;
  int n2 = random.nextInt(100) + 1;

  print("Número 1: $n1 e Número 2: $n2");

  final int numero = n1;
  n1 = n2;
  n2 = numero;
  
  print("Número 1: $n1 e Número 2: $n2");
}