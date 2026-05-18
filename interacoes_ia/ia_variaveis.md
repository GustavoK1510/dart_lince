Quais as boas práticas em dart declarando variáveis? 

| Situação                        | Recomendação                       |
| ------------------------------- | ---------------------------------- |
| Valor não muda                  | `final`                            |
| Constante fixa                  | `const`                            |
| Valor muda                      | `var`                              |
| Inicialização tardia            | `late`                             |
| Inicialização tardia + imutável | `late final`                       |
| Evitar perda de tipos           | não usar `dynamic` sem necessidade |

No dart quando usar variáveis nulas e quando usar o modificador late?

| Situação                     | Use    |
| ---------------------------- | ------ |
| Valor opcional               | `?`    |
| Pode realmente ser nulo      | `?`    |
| Será inicializado depois     | `late` |
| Valor obrigatório mas tardio | `late` |
| Valor pode nunca existir     | `?`    |
| Flutter `initState`          | `late` |

Quais as diferenças entre final e const em dart?

| Característica             | `final` | `const` |
| -------------------------- | ------- | ------- |
| Valor muda?                | Não     | Não     |
| Definido em runtime        | Sim     | Não     |
| Definido em compile time   | Não     | Sim     |
| Objetos internos imutáveis | Não     | Sim     |
| Pode usar `DateTime.now()` | Sim     | Não     |
| Melhor otimização          | Menor   | Maior   |

Por que no dart usar variáveis final e const ao invés de usar somente seus valores padrão?

| Tipo    | Ideia                  |
| ------- | ---------------------- |
| `const` | constante absoluta     |
| `final` | valor definido uma vez |
| `var`   | valor pode mudar       |
