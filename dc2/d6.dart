import 'dart:collection';

enum Naipe {
  paus,
  copas,
  espadas,
  ouros
}

class Carta {
  Naipe _naipe;
  String _valor;

  Carta(this._naipe, this._valor);

  Naipe get naipe => _naipe;
  String get valor => _valor;

  String naipeToString() {
    switch (_naipe) {
      case Naipe.paus:
        return '\u2663';
      case Naipe.copas:
        return '\u2665';
      case Naipe.espadas:
        return '\u2660';
      case Naipe.ouros:
        return '\u2666';
    }
  }
}

class Baralho {
  Queue<Carta> _cartas = Queue<Carta>();

  bool get isEmpty => _cartas.isEmpty;

  void adicionarCarta(Carta carta) {
    _cartas.addFirst(carta);
  }

  void removerCarta() {
    if (_cartas.isEmpty) {
      print('O baralho está vazio.');
      return;
    }
    var cartaRemovida = _cartas.removeFirst();
    print('Carta removida: ${cartaRemovida.valor}${cartaRemovida.naipeToString()}');
  }
}

void main() {
  Baralho baralho = Baralho();

  baralho.adicionarCarta(Carta(Naipe.paus, 'A'));
  baralho.adicionarCarta(Carta(Naipe.copas, 'A'));
  baralho.adicionarCarta(Carta(Naipe.espadas, 'A'));
  baralho.adicionarCarta(Carta(Naipe.ouros, 'A'));

  while (!baralho.isEmpty) {
    baralho.removerCarta();
  }
}