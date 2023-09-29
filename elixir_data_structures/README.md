## Listas

Uma lista ligada, também conhecida como lista encadeada, é uma estrutura de dados em que os elementos são organizados de forma sequencial, mas não necessariamente contíguos na memória. Em vez disso, cada elemento da lista contém um ponteiro para o próximo elemento da lista.

No Elixir, podemos criar uma lista ligada usando uma estrutura de dados chamada `struct` e definindo uma estrutura que representa um nó da lista. Um nó da lista ligada pode ter dois campos:
1. O valor do elemento;
2. A referência para o próximo nó (ponteiro).

Aqui está um exemplo de como podemos definir uma lista ligada no Elixir:

```elixir
  defmodule Node do
    defstruct value: nil, next: nil
  end
```

Podemos criar uma lista ligada encadeando vários nós. Cada nó aponta para o próximo nó na sequência. O último nó da lista tem seu campo `next` definido como `nil` para indicar o fim da lista.

Aqui está um exemplo de como ficaria nossa lista ligada com três elementos:

```elixir
  node1 = %Node{value: 1, next: noode2}
  node2 = %Node{value: 2, next: node3}
  node3 = %Node{value: 3, next: nil}
```
- ### Qual o custo para percorrer uma lista?

O custo para percorrer a lista aumenta proporcionalmente ao tamanho da lista. Se a lista tem `n` elementos, o custo de percorrer a lista será `O(n)`, em que `0` representa a notação de ordem de complexidade.

Caso o elemento que deve ser acessado tenha sua posição conhecida, o custo será proporcional à posição do elemento na lista. Por exemplo, se queremos acessar o elemento na posição 5, precisaremos percorrer os nós da lista até chegar ao quinto nó. Nesse caso, o custo seria `O(k)`, em que `k` é a posição do elemento desejado.

- ### Como inserir um novo elemento em uma lista?

A inserção no início da lista é geralmente mais eficiente, mas outras posições podem ser mais adequadas dependendo das necessidades específicas. O pior caso ocorre quando a inserção é no final da lista sem uma referência direta para o último nó, resultando em um custo linear.

### **Para acessar a documentação de listas pelo `iex` use `h List`**

#

## Tuplas

Uma tupla é uma estrutura de dados que pode armazenar diversos valores agrupados em uma única unidade. Ao contrário das listas, todas os valores em uma tupla são armazenados de forma contígua na memória. As tuplas são imutáveis, o que significa que, uma vez criadas, não podem ser modificadas. Se for necessário modificar ou adicionar elementos em uma tupla, é necessário criar uma nova tupla com os elementos desejados.

Uma das vantagens das tuplas é que elas podem armazenar diferentes tipos de dados em cada posição. Por exemplo:

```elixir
user = {"Vitória", 23, :feminino}
```

Nesse caso, user é uma tupla contendo três elementos: "Vitória", 23, e :feminino. A ordem dos elementos na tupla é importante, pois eles são acessados pela sua posição. Podemos acessar os elementos de uma tupla usando a notação de índice. O primeiro elemento tem índice 0, o segundo tem índice 1 e assim por diante. Por exemplo:

```elixir
first_item = elem(user, 0)
second_item = elem(user, 1)
```

Nesse caso, first_item terá o valor `"Vitória"` e second_item terá o valor `23`.

### **Key Word List**

No Elixir, uma keyword list é representada entre colchetes [ ] e pode ter uma ou mais tuplas. Onde o primeiro elemento é um atom e o segundo elemento é seu valor. São bastante usadas para definir opções em funções, configurações para funções que recebem listas de opções, etc. Por exemplo:

```elixir
key = [{:key1, "value1"}, {:key2, "value2"}]
```
