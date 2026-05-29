void leitor(String paragrafo) {
  // Dividir o parágrafo em palavras, frases e letras
  List<String> palavras = paragrafo.split(' ');

  List<String> frases = paragrafo.split('.');

  List<String> letras = paragrafo.split('');

  int vogais = 0;
  for (String letra in letras) {
    if (letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u') {
      vogais++;
    }
  }

  Set<String> consoantes = letras.where((letra) => letra != 'a' && letra != 'e' && letra != 'i' && letra != 'o' && letra != 'u' && letra != ' ' && letra != '.' && letra != ',' && letra != ';' && letra != '!' && letra != '?' && letra != 'M' && letra != 'L').toSet();

  // Imprimir os resultados
  print('Parágrafo: $paragrafo');
  print('Número de palavras: ${palavras.length}');
  print('Tamanho do texto: ${letras.length}');
  print('Número de frases: ${frases.length}');
  print('Número de vogais: $vogais');
  print('Consoantes encontradas: ${consoantes.join(', ')}');
}

void main() {
  String paragrafo = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';
  leitor(paragrafo);
}