import 'dart:math';

enum Generos {
  Rock,
  Pop,
  HipHop,
  Jazz
}

void main() {
  Random random = Random();
  int numero = random.nextInt(Generos.values.length);
  Generos genero = Generos.values[numero];
  print("Meu gênero musical favorito é o $genero");
}