void main() {
  String nome = "Gustavo";
  String sobrenome = "Campos";
  int idade = 18;
  bool situacao = true;
  double peso = 75.5;
  String? nacionalidade = "Brasileiro";

  print("Nome completo: $nome $sobrenome");

  if(idade>=18) {
    print("Idade: $idade (Maior de idade)");
  }
  else {
    print("Idade: $idade (Menor de idade)");
  }

  if(situacao) {
    print("Situação: Ativo");
  }
  else {
    print("Situação: Inativo");
  }

  print("Peso: $peso kg");

  if(nacionalidade != null) {
    print("Nacionalidade: $nacionalidade");
  }
  else {
    print("Nacionalidade: Não informada");
  }
}