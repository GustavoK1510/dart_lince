class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);

  double calcularDesconto(double percentual) {
    return preco * (percentual / 100);
  }
}

void main() {
  List<Produto> produtos = [
    Produto('Smartphone', 100.0),
    Produto('Notebook', 200.0),
    Produto('Tablet', 300.0),
    Produto('Monitor', 400.0),
    Produto('Teclado', 50.0),
  ];

  for (var produto in produtos) {
    double desconto = produto.calcularDesconto(8);
    print('Novo preço do produto ${produto.nome} (com desconto) ${produto.preco - desconto}');
  }
}