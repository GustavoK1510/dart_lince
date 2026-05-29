void main() async {
  await buscarDados();
}

Future<void> buscarDados() async {
  print('Iniciando busca de dados...');
  print('Buscando dados...');
  await Future.delayed(Duration(seconds: 3));
  print('Aguarde um momento...');
  await Future.delayed(Duration(seconds: 2));
  print('Dados encontrados!');
}