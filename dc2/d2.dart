import 'dart:math';

void main() {
  final List<Fornecedores> fornecedores = [
    FornecedorDeBebidas(),
    FornecedorDeSanduiches(),
    FornecedorDeBolos(),
    FornecedorDeSaladas(),
    FornecedorDePetiscos(),
    FornecedorDeUltraCaloricos(),
  ];

  final pessoa = Pessoa();

  // Exibindo informações iniciais
  pessoa.informacoes();

  

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    final fornecedor = fornecedores[Random().nextInt(fornecedores.length)];
    pessoa.refeicao(fornecedor);
  }

  // Exibindo informações finais
  pessoa.informacoes();
}

abstract class Fornecedores {
  Produto fornecer();
}
class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

class FornecedorDeBebidas implements Fornecedores {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class FornecedorDeSanduiches implements Fornecedores {
  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto('Hamburguer', 500),
    Produto('X-Bacon', 700),
    Produto('X-Salada', 600),
    Produto('X-Tudo', 900),
    Produto('Cachorro-quente', 400),
    Produto('Misto quente', 350),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  @override
  Produto fornecer() {
    return _sanduichesDisponiveis[_random.nextInt(_sanduichesDisponiveis.length)];
  }
}

class FornecedorDeBolos implements Fornecedores {
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto('Bolo de chocolate', 450),
    Produto('Bolo de cenoura', 300),
    Produto('Bolo de fubá', 350),
    Produto('Bolo de laranja', 400),
    Produto('Bolo de limão', 380),
    Produto('Bolo de coco', 420),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  @override
  Produto fornecer() {
    return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
  }
}

class FornecedorDeSaladas implements Fornecedores {
  final _random = Random();
  final _saladasDisponiveis = <Produto>[
    Produto('Salada Caesar', 250),
    Produto('Salada Grega', 200),
    Produto('Salada Caprese', 180),
    Produto('Salada de Frutas', 150),
    Produto('Salada de Atum', 220),
    Produto('Salada de Grão-de-bico', 300),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  @override
  Produto fornecer() {
    return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
  }
}

class FornecedorDePetiscos implements Fornecedores {
  final _random = Random();
  final _petiscosDisponiveis = <Produto>[
    Produto('Batata frita', 350),
    Produto('Coxinha', 250),
    Produto('Kibe', 300),
    Produto('Pastel', 400),
    Produto('Esfiha', 280),
    Produto('Bolinho de bacalhau', 320),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  @override
  Produto fornecer() {
    return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
  }
}

class FornecedorDeUltraCaloricos implements Fornecedores {
  final _random = Random();
  final _ultraCaloricosDisponiveis = <Produto>[
    Produto('Pizza', 800),
    Produto('Lasanha', 750),
    Produto('Feijoada', 900),
    Produto('Churrasco', 850),
    Produto('Macarronada', 700),
    Produto('Strogonoff', 650),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  @override
  Produto fornecer() {
    return _ultraCaloricosDisponiveis[_random.nextInt(_ultraCaloricosDisponiveis.length)];
  }
}

enum StatusCalorico { 
  deficitExtremo,
  deficit,
  satisfeita,
  excesso
}

class Pessoa {
  // Acumulador de calorias
  int _caloriasConsumidas = Random().nextInt(3000);

  // Contador de refeições
  int _quantidadeRefeicoes = 0;

  StatusCalorico get status {
    if (_caloriasConsumidas <= 500) {
      return StatusCalorico.deficitExtremo;    
    } else if (_caloriasConsumidas > 500 && _caloriasConsumidas <= 1800) {
      return StatusCalorico.deficit;
    } else if (_caloriasConsumidas > 1800 && _caloriasConsumidas <= 2500) {
      return StatusCalorico.satisfeita;
    } else {
      return StatusCalorico.excesso;
    }
  }

  /// Imprime as informacoes desse consumidor
  void informacoes() {
    print('Calorias: $_caloriasConsumidas');
    print('Status calorico: ${status.name}');
    print('Quantidade de refeições: $_quantidadeRefeicoes');
  }

  /// Verifica se o consumidor precisa comer mais
  bool precisaComer() {
    return status == StatusCalorico.deficitExtremo || status == StatusCalorico.deficit;
  }

  /// Consome um produto e aumenta o número de calorias
  void refeicao(Fornecedores fornecedor) {
    if (!precisaComer()) {
      return;
    }
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;
    _quantidadeRefeicoes++;
  }
}