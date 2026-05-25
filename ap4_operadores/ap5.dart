void main() {
  final mapa = {
    "Nelson": null,
    "Jane": null,
    "Jack": 16,
    "Rupert": 37,
    "Andy": 13,
    "Kim": 27,
    "Robert": 31,
  };
  verificador(mapa);
}

void verificador(Map<String, int?> mapa) {
  for (var nome in mapa.keys) {
    dynamic idade = mapa[nome];
    idade ??= 'idade não informada';
    print('$nome - $idade');
  }
}