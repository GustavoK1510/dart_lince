import 'dart:math';

String convBin(int decimal) {
  String binario = '';
  while (decimal > 0) {
    int resto = decimal % 2;
    binario = resto.toString() + binario;
    decimal ~/= 2;
  }
  return binario;
}

int convOct(int decimal) {
  int octal = 0;
  int i = 0;
  while (decimal > 0) {
    int resto = decimal % 8;
    octal += resto * pow(10, i).toInt();
    decimal ~/= 8;
    i++;
  }
  return octal;
}

int convHex(int decimal) {
  int hexadecimal = 0;
  int i = 0;
  while (decimal > 0) {
    int resto = decimal % 16;
    hexadecimal += resto * pow(10, i).toInt();
    decimal ~/= 16;
    i++;
  }
  return hexadecimal;
}

void main() {
  List<int> valores = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  valores.sort();
  for (int valor in valores) {
    print('Decimal: $valor, Binário: ${convBin(valor)}, Octal: ${convOct(valor)}, Hexadecimal: ${convHex(valor)}');
  }
}