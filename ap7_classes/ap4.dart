import 'dart:math';

class Pessoa {
  String _nome;
  int _idade;
  double _altura;

  Pessoa(this._nome, this._idade, this._altura);

  String get nome => _nome;
  int get idade => _idade;
  double get altura => _altura;

  set nome(String nome) {
    _nome = nome;
  }

  set idade(int idade) {
    if (idade >= 0) {
      _idade = idade;
    } else {
      print('Idade não pode ser negativa.');
    }
  }

  set altura(double altura) {
    if (altura >= 1) {
      _altura = altura;
    } else {
      print('Altura não pode ser menor que 1 metro.');
    }
  }
}

void main() {
  Random random = Random();
  int idade = random.nextInt(99) + 1;
  double altura = random.nextDouble() * 1.3 + 1;

  Pessoa pessoa = Pessoa('Gustavo', idade, altura);
  print('Nome: ${pessoa.nome}');
  print('Idade: ${pessoa.idade} anos');
  print('Altura: ${pessoa.altura.toStringAsFixed(2)} metros');
}
