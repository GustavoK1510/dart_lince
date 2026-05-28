abstract class Pessoa {
  void dormir();
}

abstract class Funcionario extends Pessoa {
  void trabalhar();
}

class Professor extends Funcionario {
  @override
  void dormir() {
    print("O professor está dormindo");
  }

  @override
  void trabalhar() {
    print("O professor está trabalhando");
  }
}