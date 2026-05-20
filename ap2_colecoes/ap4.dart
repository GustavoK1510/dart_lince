void main() {
  final Map estados = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguacu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda']
  };

  print("Estados: ${estados.keys.join(' ; ')}");

  final List<String> sc = estados['SC'];
  sc.sort();
  print("Cidades de SC: ${sc.join(' ; ')}");

  final cidadesSiglas = [
    for (var estado in estados.keys)
      for (var cidade in estados[estado])
        '$cidade - $estado'
  ];

  cidadesSiglas.sort();
  print(cidadesSiglas.join('\n'));
}