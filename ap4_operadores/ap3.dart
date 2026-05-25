void main() {
  final List<dynamic> lista = [1, 2, 3, 4, 5];
  final resultado = funcao(lista: lista, valor: 3);
  print(resultado);
}

dynamic funcao({List<dynamic>? lista, dynamic valor}) {
  lista?.remove(valor);

  return lista ?? 'Não foi possível remover o valor da lista';
}