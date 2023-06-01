# Conceitos Programação Funcional com Elixir

## Função pura

  Uma função pura sempre produz o mesmo resultado para uma determinada entrada. Por exemplo, se `x = 2`, então `f(x) = x + 2` sempre resultará em `4`. Funções puras têm o objetivo de manter o código simples, com uma responsabilidade única, seguindo o princípio da responsabilidade única (o S do principio SOLID).

## Imuablilidade

os valores atribuídos a variáveis ​​são imutáveis, ou seja, não podem ser alterados. Caso seja necessário um novo valor para a variável, ela precisa ser reatribuída. Quando uma nova atribuição ocorre, uma cópia com o novo valor é criada em outro endereço de memória. Isso ajuda a manter o mínimo de "estado" na aplicação facilitando o uso de paralelismo e concorrência tendo uma melhor performance, já que quando não alteramos o valor de uma váriável podemos garantir sua integridade.

## Composição de funções

A composição de funções no Elixir é uma técnica em que várias funções são combinadas para formar uma nova função. Isso é feito usando o operador `|>` (pipe), que permite passar o resultado de uma função como argumento para outra função. Ao utilizar a composição de funções, é possível criar uma sequência de transformações em dados de forma concisa e legível. Essa abordagem promove a modularidade, reutilização de código e expressividade

## Funções de alta ordem

As funções de alta ordem no Elixir são funções que podem receber outras funções como argumento ou retorná-las como resultado. Isso proporciona maior flexibilidade e modularidade no código, permitindo a composição e manipulação de comportamentos de forma dinâmica.  Um exemplo prático é o uso da função. ex:

  ```elixir
    Enum.map([1,2,3,4,5], fn x -> x * 2 end)
    # output [2, 4, 6, 8, 10]
  ```

 A função `Enum.map` recebe uma função como segundo argumento e a aplica a cada elemento de uma lista, retornando uma nova lista com os resultados.
 