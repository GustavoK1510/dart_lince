import 'dart:math';

void main() {
  Random random = Random();

  List<int> lista1 = List.generate(5, (_) => random.nextInt(100));
  List<int> lista2 = List.generate(5, (_) => random.nextInt(100));

  formatacao(lista1);
  formatacao(lista2);
  formatacao(soma(lista1, lista2));


}

void formatacao(List<int> lista) {
  if(lista.isEmpty) {
    print('Lista vazia');
    return;
  }
  print('Lista: ${lista.join(', ')}');
}

List<int> soma(List<int> lista1, List<int> lista2) {
  List<int> resultado = [];
  if (lista1.length != lista2.length) {
    return resultado;
  }
  else {
    for (int i = 0; i < lista1.length; i++) {
      resultado.add(lista1[i] + lista2[i]);
      print('${lista1[i]} + ${lista2[i]}');
    }
    return resultado;
  }
  
}