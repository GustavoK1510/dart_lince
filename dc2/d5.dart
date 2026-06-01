import 'dart:math';

class ItemCompra {
  String _nome;
  int _quantidade;
  StatusItem _status;

  ItemCompra(this._nome, this._quantidade, this._status);

  String get nome => _nome;
  int get quantidade => _quantidade;
  StatusItem get status => _status;
}

class ListaCompra {
  List<ItemCompra> _itens = [];

  void adicionarItem(ItemCompra item) {
    _itens.add(item);
  }

  void escolherItemAleatorio() {
    if (_itens.isEmpty) {
      print('A lista de compras está vazia.');
      return;
    }
    var random = Random();
    List<ItemCompra> itensPendentes = _itens.where((item) => item.status == StatusItem.Pendente).toList();
    if (itensPendentes.isEmpty) {
      print('Não há itens pendentes para escolher.');
      return;
    }
    int index = random.nextInt(itensPendentes.length);
    var itemEscolhido = itensPendentes[index];
    marcarComoComprado(itemEscolhido.nome);
    print('Item comprado aleatoriamente: ${itemEscolhido.nome} - Quantidade: ${itemEscolhido.quantidade}');
  }

  void marcarComoComprado(String nomeItem) {
    bool itemEncontrado = false;
    for (var item in _itens) {
      if (item.nome == nomeItem) {
        item._status = StatusItem.Comprado;
        itemEncontrado = true;
      }
    }
    if (!itemEncontrado) {
      print('Item não encontrado');
    }
  }

  void marcarComoSemEstoque(String nomeItem) {
    bool itemEncontrado = false;
    for (var item in _itens) {
      if (item.nome == nomeItem) {
        item._status = StatusItem.Sem_Estoque;
        itemEncontrado = true;
      }
    }
    if (!itemEncontrado) {
      print('Item não encontrado');
    }
  }

  void mostrarComprados() {
    print('Itens Comprados:');
    for (var item in _itens) {
      if (item.status == StatusItem.Comprado) {
        print('${item.nome} - Quantidade: ${item.quantidade}');
      }
    }
  }

  void mostrarPendentes() {
    print('Itens Pendentes:');
    for (var item in _itens) {
      if (item.status == StatusItem.Pendente) {
        print('${item.nome} - Quantidade: ${item.quantidade}');
      }
    }
  }

  void mostrarSemEstoque() {
    print('Itens Sem Estoque:');
    for (var item in _itens) {
      if (item.status == StatusItem.Sem_Estoque) {
        print('${item.nome}');
      }
    }
  }

  void mostrarProgresso() {
    int totalItens = _itens.length;
    int itensComprados = _itens.where((item) => item.status == StatusItem.Comprado).length;
    print('Progresso: $itensComprados/$totalItens');
  }

  List<ItemCompra> get itens => _itens;
}

enum StatusItem {
  Pendente,
  Comprado,
  Sem_Estoque,
}

void main() {
  var listaCompra = ListaCompra();

  listaCompra.adicionarItem(ItemCompra('Leite', 3, StatusItem.Pendente));
  listaCompra.adicionarItem(ItemCompra('Pão', 5, StatusItem.Pendente));
  listaCompra.adicionarItem(ItemCompra('Ovos', 12, StatusItem.Pendente));
  listaCompra.adicionarItem(ItemCompra('Frutas', 3, StatusItem.Pendente));

  listaCompra.mostrarPendentes();
  listaCompra.marcarComoSemEstoque('Pão');
  listaCompra.escolherItemAleatorio();
  listaCompra.escolherItemAleatorio();
  listaCompra.mostrarPendentes();
  listaCompra.mostrarComprados();
  listaCompra.mostrarSemEstoque();
  listaCompra.mostrarProgresso();
}