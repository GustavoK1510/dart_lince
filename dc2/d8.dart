import 'dart:math';

class Figurinha {
  String _nome;
  int _codigo;

  Figurinha(this._nome, this._codigo);

  String get nome => _nome;
  int get codigo => _codigo;

   @override
  bool operator ==(Object other) {
    if (other is Figurinha) {
      return other.codigo == codigo;
    }

    return false;
  }

  @override
  int get hashCode => codigo.hashCode;
}

class Album {
  Set<Figurinha> _figurinhas = {};
  List<Figurinha> _figurinhasRepetidas = [];

  void adicionarFigurinha(Figurinha figurinha) {
    if (!_figurinhas.add(figurinha)) {
      _figurinhasRepetidas.add(figurinha);
    }
  }

  void mostrarFigurinhas() {
    List<Figurinha> figurinhasOrdenadas = _figurinhas.toList()..sort((a, b) => a.codigo.compareTo(b.codigo));
    for (var figurinha in figurinhasOrdenadas) {
      print('Nome: ${figurinha.nome}, Código: ${figurinha.codigo}');
    }
  }

  void mostrarFigurinhasRepetidas() {
    int contador = 0;
    for (var figurinha in _figurinhasRepetidas) {
      contador++;
    }
    print('Total de figurinhas repetidas: $contador');
  }

  bool get albumCompleto => _figurinhas.length == 20;
}

class PacoteFigurinhas {

  List<Figurinha> gerarPacote(Set<Figurinha> figurinhasDisponiveis) {
    List<Figurinha> _figurinhas = [];
    while (_figurinhas.length < 4) {
      Figurinha figurinha = figurinhasDisponiveis.elementAt(Random().nextInt(figurinhasDisponiveis.length));
      if (!_figurinhas.contains(figurinha)) {
        _figurinhas.add(figurinha);
      }
    }
    return _figurinhas;
  }
}

void main() {
  Set<Figurinha> figurinhasDisponiveis = {
    Figurinha('Messi', 1),
    Figurinha('Pedri', 2),
    Figurinha('Cristiano Ronaldo', 3),
    Figurinha('Neymar', 4),
    Figurinha('Harry Kane', 5),
    Figurinha('Olise', 6),
    Figurinha('Dembelé', 7),
    Figurinha('Mbappé', 8),
    Figurinha('Vini Jr', 9),
    Figurinha('Raphinha', 10),
    Figurinha('Lamine Yamal', 11),
    Figurinha('Manuel Neuer', 12),
    Figurinha('Endrick', 13),
    Figurinha('Salah', 14),
    Figurinha('Zeki Amdouni', 15),
    Figurinha('Modric', 16),
    Figurinha('Doue', 17),
    Figurinha('Danilo Santos', 18),
    Figurinha('Barcola', 19),
    Figurinha('Vitinha', 20)
  };

  Album album = Album();

  while (!album.albumCompleto) {
    PacoteFigurinhas pacote = PacoteFigurinhas();
    List<Figurinha> figurinhasDoPacote = pacote.gerarPacote(figurinhasDisponiveis);
    for (var figurinha in figurinhasDoPacote) {
      album.adicionarFigurinha(figurinha);
    }
  }

  print('Álbum completo!');
  album.mostrarFigurinhas();
  album.mostrarFigurinhasRepetidas();
  
}