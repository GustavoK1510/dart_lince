import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final comparador = ComparadorFormasGeometricas();

  // Definindo as formas geometricas
  final circuloA = Circulo('Circulo A', 3);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retângulo A', 4, 3);
  final retanguloB = Retangulo('Retângulo B', 19, 11);
  final quadradoA = Quadrado('Quadrado A', 5);
  final quadradoB = Quadrado('Quadrado B', 7);
  final trianguloA = TrianguloEquilatero('Triângulo A', 6);
  final trianguloB = TrianguloRetangulo('Triângulo B', 5, 4);
  final pentagonoA = PentagonoRegular('Pentágono A', 4);
  final pentagonoB = PentagonoRegular('Pentágono B', 6);
  final hexagonoA = HexagonoRegular('Hexágono A', 3);
  final hexagonoB = HexagonoRegular('Hexágono B', 5);

  List<FormaGeometrica> formas = [
    circuloA,
    circuloB,
    retanguloA,
    retanguloB,
    quadradoA,
    quadradoB,
    trianguloA,
    trianguloB,
    pentagonoA,
    pentagonoB,
    hexagonoA,
    hexagonoB,
  ];

  // Comparando as formas geometricas
  FormaGeometrica formaDeMaiorArea = formas[0];
  FormaGeometrica formaDeMaiorPerimetro = formas[0];
  for (int i = 0; i < formas.length; i++) {
    if (formas[i].area > formaDeMaiorArea.area) {
      formaDeMaiorArea = formas[i];
    }
    if (formas[i].perimetro > formaDeMaiorPerimetro.perimetro) {
      formaDeMaiorPerimetro = formas[i];
    }
  }
  print(
    'A maior area e ${formaDeMaiorArea.area.toStringAsFixed(2)} e pertence a ${formaDeMaiorArea.nome}');
  print(
    'O maior perímetro e ${formaDeMaiorPerimetro.perimetro.toStringAsFixed(2)} e pertence a ${formaDeMaiorPerimetro.nome}');
}

/// Classe que representa qualquer forma geometrica, e define os metodos que devem ser implementados
abstract class FormaGeometrica {
  String get nome;
  double get area;
  double get perimetro;
}

/// Representa a forma geometrica "círculo"
class Circulo extends FormaGeometrica {
  /// Construtor padrao, recebe o [raio] do círculo.
  Circulo(this.nome, this.raio);

  final String nome;
  final double raio;

  /// Retorna a area desse círculo
  double get area => math.pi * math.pow(raio, 2);

  /// Retorna o perímetro desse círculo
  double get perimetro => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retângulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo extends FormaGeometrica {
  /// Construtor padrao, recebe a [altura] e [largura] do retângulo
  Retangulo(this.nome, this.altura, this.largura);

  final String nome;
  final double largura;
  final double altura;

  /// Retorna a area desse retângulo
  double get area => altura * largura;

  /// Retorna o perímetro desse retângulo
  double get perimetro => (altura * 2) + (largura * 2);
}

/// Representa a forma geometrica "quadrado", que e um formato especial de
/// retângulo, onde todos os lados possuem o mesmo tamanho.
class Quadrado extends FormaGeometrica {
  /// Construtor padrao, recebe o [lado] do quadrado
  Quadrado(this.nome, this.lado);

  final String nome;
  final double lado;

  /// Retorna a area desse quadrado
  double get area => lado * lado;

  /// Retorna o perímetro desse quadrado
  double get perimetro => lado * 4;
}

/// Representa a forma geometrica triângulo equilátero
class TrianguloEquilatero extends FormaGeometrica {
  /// Construtor padrao, recebe o [lado] do triangulo equilatero
  TrianguloEquilatero(this.nome, this.lado);

  final String nome;
  final double lado;

  /// Retorna a area desse triangulo equilatero
  double get area => (math.sqrt(3) / 4) * math.pow(lado, 2);

  /// Retorna o perímetro desse triangulo equilatero
  double get perimetro => lado * 3;
}

/// Representa a forma geometrica triângulo retângulo
class TrianguloRetangulo extends FormaGeometrica {
  /// Construtor padrao, recebe a [base] e [altura] do triangulo retangulo
  TrianguloRetangulo(this.nome, this.base, this.altura);

  final String nome;
  final double base;
  final double altura;

  /// Retorna a area desse triangulo retangulo
  double get area => (base * altura) / 2;

  /// Retorna o perímetro desse triangulo retangulo
  double get perimetro {
    final hipotenusa = math.sqrt(math.pow(base, 2) + math.pow(altura, 2));
    return base + altura + hipotenusa;
  }
}

/// Representa a forma geometrica pentágono regular
class PentagonoRegular extends FormaGeometrica {
  /// Construtor padrao, recebe o [lado] do pentágono regular
  PentagonoRegular(this.nome, this.lado);

  final String nome;
  final double lado;

  /// Retorna a area desse pentágono regular
  double get area => (1 / 4) * math.sqrt(5 * (5 + 2 * math.sqrt(5))) * math.pow(lado, 2);

  /// Retorna o perímetro desse pentágono regular
  double get perimetro => lado * 5;
}

/// Representa a forma geometrica hexágono regular
class HexagonoRegular extends FormaGeometrica {
  /// Construtor padrao, recebe o [lado] do hexágono regular
  HexagonoRegular(this.nome, this.lado);

  final String nome;
  final double lado;

  /// Retorna a area desse hexágono regular
  double get area => (3 * math.sqrt(3) / 2) * math.pow(lado, 2);

  /// Retorna o perímetro desse hexágono regular
  double get perimetro => lado * 6;
}

/// Compara caracteristicas de formas geometricas
class ComparadorFormasGeometricas {
  /// Retorna a forma com a maior area, ou [formaA] caso as areas sejam
  /// iguais
  
  FormaGeometrica formaDeMaiorArea(FormaGeometrica formaA, FormaGeometrica formaB,) {
    if (formaA.area >= formaB.area) {
      return formaA;
    } else {
      return formaB;
    }
  }

  /// Retorna a forma com o maior perímetro, ou [formaA] caso os perímetros sejam
  /// iguais
  
  FormaGeometrica formaDeMaiorPerimetro(FormaGeometrica formaA, FormaGeometrica formaB,) {
    if (formaA.perimetro >= formaB.perimetro) {
      return formaA;
    } else {
      return formaB;
    }
  }
}