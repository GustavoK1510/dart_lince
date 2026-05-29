void main() async {
  print('Iniciando lançamento');

  await contagemRegressiva(10);

  print('Foguete lançado!');
}

Future<void> contagemRegressiva(int segundos) async {
  for (int i = segundos; i > 0; i--) {
    print(i);
    await Future.delayed(Duration(seconds: 1));
  }
}