import 'dart:io';

void main() {
  List<Musica> musicas = [
    Musica('Shape of You', 'Ed Sheeran', 'Divide', 233),
    Musica('Blinding Lights', 'The Weeknd', 'After Hours', 200),
    Musica('Levitating', 'Dua Lipa', 'Future Nostalgia', 203),
    Musica('Watermelon Sugar', 'Harry Styles', 'Fine Line', 174),
    Musica('Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209),
  ];

  Biblioteca biblioteca = Biblioteca(musicas);

  biblioteca.imprimirBiblioteca();
  biblioteca.buscarPorTitulo('Shape of You');
  biblioteca.buscarPorArtista('Dua Lipa');
  biblioteca.buscarPorAlbum('Fine Line');
}

class Musica {
  String _titulo;
  String _artista;
  String _nomeAlbum;
  int _duracao;

  Musica(this._titulo, this._artista, this._nomeAlbum, this._duracao);

  String get titulo => _titulo;
  String get artista => _artista;
  String get nomeAlbum => _nomeAlbum;
  int get duracao => _duracao;

  void imprimirDetalhes() {
    print('Título: $_titulo');
    print('Artista: $_artista');
    print('Nome do Álbum: $_nomeAlbum');
    print('Duração: $_duracao segundos');
    print('-------------------------');
  }
}

class Biblioteca {
  List<Musica> _musicas;

  Biblioteca(this._musicas);

  List<Musica> get musicas => _musicas;

  void buscarPorTitulo(String titulo) {
  bool encontrado = false;
  
  List<Musica> musicas = this.musicas;
  for (var musica in musicas) {
    if (musica.titulo.toLowerCase() == titulo.toLowerCase()) {
      print('Música encontrada:');
      musica.imprimirDetalhes();
      encontrado = true;
    }
  }
  if (!encontrado) {
    print('Música não encontrada.');
  }
  }

  void buscarPorArtista(String artista) {
    bool encontrado = false;

    List<Musica> musicas = this.musicas;
    for (var musica in musicas) {
      if (musica.artista.toLowerCase() == artista.toLowerCase()) {
        print('Artista encontrado:');
        musica.imprimirDetalhes();
        encontrado = true;
      }
    }
    if (!encontrado) {
      print('Artista não encontrado.');
    }
  }

  void buscarPorAlbum(String nomeAlbum) {
    bool encontrado = false;

    List<Musica> musicas = this.musicas;
    for (var musica in musicas) {
      if (musica.nomeAlbum.toLowerCase() == nomeAlbum.toLowerCase()) {
        print('Álbum encontrado:');
        musica.imprimirDetalhes();
        encontrado = true;
      }
    }
    if (!encontrado) {
      print('Álbum não encontrado.');
    }
  }

  void imprimirBiblioteca() {
    List<Musica> musicas = this.musicas;
    for (var musica in musicas) {
      musica.imprimirDetalhes();
    }

    int totalDuracao = musicas.fold(0, (total, musica) => total + musica.duracao);
    print('Duração total da biblioteca: ${(totalDuracao/3600).toStringAsFixed(2)} horas');
  }
}