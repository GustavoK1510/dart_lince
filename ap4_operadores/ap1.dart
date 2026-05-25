void main() {
ehAnoBissexto(2016);
ehAnoBissexto(1988);
ehAnoBissexto(2000);
ehAnoBissexto(2100);
ehAnoBissexto(2300);
ehAnoBissexto(1993);
}

void ehAnoBissexto(int ano) {
  if ((ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0)) {
    print("O ano $ano é bissexto");
  } else {
    print("O ano $ano não é bissexto");
  }
}