abstract class Animal {
  void comer();
  void beber();
}

class Cavalo extends Animal {
  @override
  void beber() {
    print("O animal está bebendo");
  }

  @override
  void comer() {
    print("O animal está comendo");
  }

  void relinchar() {
    print("O cavalo está relinchando");
  }
}

void main() {
  Cavalo cavalo = Cavalo();
  cavalo.comer();
  cavalo.beber();
  cavalo.relinchar();
}