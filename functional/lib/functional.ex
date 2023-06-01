defmodule Functional do
  def hello do
    user_data = %{name: "Vitória", age: 23}

    # cria uma cópia em um novo endereço de memória para a váriável com o valor atualizad
    user_data = Map.put(user_data, :name, "Raphael")
  end
end
