import 'dart:math';

void main() {
  Random random = Random();
  List<int> temperaturas = List.generate(15, (_) => random.nextInt(5000 - 1 + 1) + 1);

  for (int i = 0; i < temperaturas.length; i++) {
    int decimal = temperaturas[i];
    String binario = convBin(decimal);
    int octal = convOct(decimal);
    int hexadecimal = convHex(decimal);

    print('decimal: $decimal, binário: $binario, octal: $octal, hexadecimal: $hexadecimal');
  }
}

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


