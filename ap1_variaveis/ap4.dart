import 'dart:math';
void main(){
  Random random = Random();
  
  int n1 = random.nextInt(100) + 1;
  int n2 = random.nextInt(100) + 1;

  final double numero = n1/n2;

  final int parteinteira = numero.toInt();
  final double partedecimal = numero - parteinteira;

  print("Número: $numero");
  print("Parte inteira: $parteinteira");
  print("Parte decimal: $partedecimal");
}