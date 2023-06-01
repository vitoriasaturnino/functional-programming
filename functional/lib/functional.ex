defmodule Functional do
  def hello do
    %{name: "Vitória", age: 23, cpf: "01234567890"}
    |> put_map(:name, "Raphael")
    |> put_map(:age, 25)
    # função anônima
    # a key está sendo ignorada
    |> Enum.map(fn {_key, value} -> value end)
  end

  defp put_map(map, key, value) do
    Map.put(map, key, value)
  end
end
