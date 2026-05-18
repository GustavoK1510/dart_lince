class Pessoa {
  late final String nome;
  late final String sobrenome;
  late final int idade;
  late final bool situacao;
  late final double peso;
  String? nacionalidade;
}

void main(){
  Pessoa p1 = Pessoa();

  p1.nome = "Gustavo";
  p1.sobrenome = "Campos";
  p1.idade = 18;
  p1.situacao = true;
  p1.peso = 75.5;
  p1.nacionalidade = "Brasileira";

  print("Nome completo: ${p1.nome} ${p1.sobrenome}");

  if(p1.idade>=18) {
    print("Idade: ${p1.idade} (Maior de idade)");
  }
  else {
    print("Idade: ${p1.idade} (Menor de idade)");
  }

  if(p1.situacao) {
    print("Situação: Ativo");
  }
  else {
    print("Situação: Inativo");
  }

  print("Peso: ${p1.peso} kg");

  if(p1.nacionalidade != null) {
    print("Nacionalidade: ${p1.nacionalidade}");
  }
  else {
    print("Nacionalidade: Não informada");
  }
}