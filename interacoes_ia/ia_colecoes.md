# Boas práticas no uso de listas em Dart

Algumas boas práticas no uso de listas em Dart ajudam bastante em legibilidade, desempenho e manutenção do código.

---

# 1. Declare o tipo da lista

Evite listas sem tipagem.

## Ruim

```dart
var lista = [];
```

## Bom

```dart
List<String> nomes = [];
```

Isso evita erros e melhora o autocomplete da IDE.

---

# 2. Use `final` quando a referência não muda

A lista pode mudar internamente, mas a variável não deve apontar para outra lista.

```dart
final List<String> nomes = [];

nomes.add('Gustavo'); // permitido
// nomes = []; // erro
```

Use `const` apenas para listas totalmente imutáveis.

```dart
const List<int> numeros = [1, 2, 3];
```

---

# 3. Prefira listas tipadas ao invés de `dynamic`

## Evite

```dart
List<dynamic> itens = [1, 'texto', true];
```

Misturar tipos dificulta manutenção.

## Prefira

```dart
List<int> numeros = [1, 2, 3];
```

---

# 4. Use métodos da coleção ao invés de loops manuais

Dart possui vários métodos úteis.

## `map`

```dart
final nomes = ['ana', 'joao'];

final maiusculos = nomes
    .map((n) => n.toUpperCase())
    .toList();
```

---

## `where`

```dart
final pares = numeros
    .where((n) => n % 2 == 0)
    .toList();
```

---

## `any`

```dart
bool temMaior = numeros.any((n) => n > 10);
```

---

## `every`

```dart
bool todosPositivos = numeros.every((n) => n > 0);
```

---

## `contains`

```dart
if (nomes.contains('Ana')) {
  print('Existe');
}
```

---

# 5. Use `Set` quando precisar evitar duplicados

Se o objetivo não permite valores repetidos:

```dart
final numeros = <int>{};

numeros.add(1);
numeros.add(1);

print(numeros); // {1}
```

Ou converter:

```dart
final semDuplicados = lista
    .toSet()
    .toList();
```

---

# 6. Evite modificar a lista enquanto percorre ela

Isso pode gerar comportamento inesperado.

## Evite

```dart
for (var item in lista) {
  lista.remove(item);
}
```

## Prefira

```dart
lista.removeWhere((item) => item.isEmpty);
```

---

# 7. Use `isEmpty` e `isNotEmpty`

Mais legível que comparar tamanho.

```dart
if (lista.isEmpty) {}

if (lista.isNotEmpty) {}
```

## Evite

```dart
if (lista.length == 0)
```

---

# 8. Tome cuidado com acesso por índice

Sempre valide antes:

```dart
if (lista.length > index) {
  print(lista[index]);
}
```

Ou:

```dart
if (index >= 0 && index < lista.length)
```

---

# 9. Prefira `for-in` quando não precisar do índice

Mais limpo:

```dart
for (var nome in nomes) {
  print(nome);
}
```

Use índice apenas quando necessário.

```dart
for (int i = 0; i < nomes.length; i++) {
  print('$i: ${nomes[i]}');
}
```

---

# 10. Use spread operator (`...`) para juntar listas

```dart
final lista1 = [1, 2];
final lista2 = [3, 4];

final resultado = [...lista1, ...lista2];
```

Também existe o null-aware:

```dart
final resultado = [...?listaOpcional];
```

---

# 11. Prefira listas imutáveis quando possível

Isso reduz bugs.

```dart
final List<String> nomes = List.unmodifiable([
  'Ana',
  'João',
]);
```

---

# 12. Escolha a estrutura correta

- `List` → ordem importa e aceita repetidos
- `Set` → sem duplicados
- `Map` → chave e valor

---

# 13. Evite listas gigantes em memória sem necessidade

Para muitos dados, use processamento lazy com `Iterable`.

```dart
final resultado = numeros
    .where((n) => n.isEven)
    .map((n) => n * 2);
```

O processamento só ocorre quando necessário.

---

# 14. Dê nomes claros

## Bom

```dart
List<String> nomesUsuarios;
List<int> idsProdutos;
```

## Evite

```dart
List l;
List x;
```

---

# 15. Use `.first`, `.last` e `.single` com cuidado

```dart
lista.first
lista.last
```

Geram erro se a lista estiver vazia.

Verifique antes:

```dart
if (lista.isNotEmpty) {
  print(lista.first);
}
```

---

# Exemplo de código organizado

```dart
final List<int> numeros = [1, 2, 3, 4, 5];

final pares = numeros
    .where((n) => n.isEven)
    .map((n) => n * 2)
    .toList();

print(pares);
```

## Resultado

```dart
[4, 8]
```

---

# Conclusão

Uma prática muito valorizada em Dart/Flutter é tentar escrever código mais declarativo usando métodos da coleção como:

- `map`
- `where`
- `fold`

em vez de muitos loops manuais.

Isso deixa o código mais limpo, legível e próximo do estilo moderno usado no Flutter.
