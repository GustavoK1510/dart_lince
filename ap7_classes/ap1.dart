class ContaBancaria {
  double saldo;

  ContaBancaria(this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      print('Saldo insuficiente para saque.');
    }
  }

  void exibirSaldo() {
    print('Saldo atual: \$${saldo.toStringAsFixed(2)}');
  }
}

void main() {
  ContaBancaria conta = ContaBancaria(0);

  conta.depositar(10000);
  conta.sacar(0.01);
  conta.exibirSaldo();
}