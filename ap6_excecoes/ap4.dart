abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  String _nome;

  ArquivoTexto(this._nome);

  get nome => _nome;
  set nome(String value) => _nome = value;

  @override
  void abrir() {
    try {
      throw NomeInvalidoException();
    } catch (e) {
      rethrow;
    }
  }
}

class NomeInvalidoException implements Exception {
  String toString() {
    return "Erro ao abrir o arquivo.";
  }
}

void main() {
  try {
    ArquivoTexto arquivo = ArquivoTexto("documento.txt");
    arquivo.abrir();
  } catch (e) {
    print("Entrada invalida. Digite um nome valido.");
    print(e.toString());
  } finally {
    print("Fim do programa");
  }
}