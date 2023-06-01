# Conceitos Programação Funcional - Elixir

## Função pura

  Uma função pura possui sempre o mesmo resultado para a mesma entrada. ex:

      x = 2
      f(x) = x + 2 = 4

  Sempre que a entrada for 2 o reulstado será 4.
  Funções puras tem o objetivo de manter o código simples e com propósito muito único para ser uma função especialista que faz uma coisa só. O ""S" do princiopio SOLID, Single Responsiblity Principle (Princípio da responsabilidade única).

## Imuablilidade

O valor atribído a uma váriável não pode passar por mudanças, caso precise de um valor diferente para a váriável esse valor precisa ser reatríbuído a ela.
Quando um novo valor é atríbído a váriável é como se fosse criada uma cópia em um outro endereço da memória. Isso ajuda a manter o mínimo de estado na aplicação facilitando o uso de paralelismo e concorrencia tendo uma melhor performance, já que quando não alteramos o estado de uma váriável podemos garantir sua integridade.
