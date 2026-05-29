void somaFor(List<int> numeros) {
  int soma = 0;
  for (int i = 0; i < numeros.length; i++) {
    soma += numeros[i];
  }
  print('for: $soma');
}

void somaWhile(List<int> numeros) {
  int soma = 0;
  int i = 0;
  while (i < numeros.length) {
    soma += numeros[i];
    i++;
  }
  print('while: $soma');
}

int somaRecursiva(List<int> numeros, int index) {
  if (index >= numeros.length) {
    return 0;
  }

  return numeros[index] + somaRecursiva(numeros, index + 1);
}

void somaColecao(List<int> numeros) {
  int soma = numeros.reduce((a, b) => a + b);
  print('lista: $soma');
}


void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];
  somaFor(numeros);
  somaWhile(numeros);
  int somaRec = somaRecursiva(numeros, 0);
  print('recursiva: $somaRec');
  somaColecao(numeros);
}