import 'dart:math';

void main() {
  print(A(B));
  print(A(C));

}

int A(Function funcao) {
  Random random = Random();
  int n1 = random.nextInt(100);
  int n2 = random.nextInt(100);
  int n3 = random.nextInt(100);
  int n4 = random.nextInt(100);

  int resultado1 = funcao(n1,n2);
  int resultado2 = funcao(n3,n4);
  return resultado1 + resultado2;
}

num B(num n1, num n2) {
  return n1 + n2;
}

num C(num n1, num n2) {
  return n1 * n2;
}