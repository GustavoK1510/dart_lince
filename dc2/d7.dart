import 'dart:collection';
import 'dart:math';

class Pessoa {
  String _nome;
  

  Pessoa(this._nome);

  String get nome => _nome;
}

class GeradorNomeAleatorio {
  Pessoa gerarNomeAleatorio() {
    const List<String> nomes = ['Alice', 'Bob', 'Charlie', 'Diana', 'Eve', 'Frank', 'Grace', 'Heidi', 'Ivan', 'Judy'];
    const List<String> sobrenomes = ['Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Miller', 'Davis', 'Rodriguez', 'Martinez'];

    var random = Random();
    String nomeAleatorio = nomes[random.nextInt(nomes.length)];
    String sobrenomeAleatorio = sobrenomes[random.nextInt(sobrenomes.length)];
    return Pessoa('$nomeAleatorio $sobrenomeAleatorio');
  }
}

class FilaMercado {
  Queue<Pessoa> _fila = Queue<Pessoa>();

  get isEmpty => _fila.isEmpty;

  void adicionarPessoa(Pessoa pessoa) {
    _fila.addLast(pessoa);
    print('${pessoa.nome} entrou na fila.');
  }

  void atenderPessoa() {
    if (_fila.isEmpty) {
      print('A fila está vazia. Ninguém para atender.');
      return;
    }
    Pessoa pessoaAtendida = _fila.removeFirst();
    print('${pessoaAtendida.nome} foi atendida.');
  }
}

void main() {
  FilaMercado fila = FilaMercado();

  for (int i = 0; i < 10; i++) {
    fila.adicionarPessoa(GeradorNomeAleatorio().gerarNomeAleatorio());
  }

  while (!fila.isEmpty) {
    fila.atenderPessoa();
  }
}