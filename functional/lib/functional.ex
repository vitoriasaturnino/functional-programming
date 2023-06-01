defmodule Functional do
  def hello do
    # Original map
    %{name: "Vitória", age: 23}
    |> IO.inspect()

    # Map with name changed
    |> put_map(:name, "Raphael")
    |> IO.inspect()

    # Map with age updated
    |> put_map(:age, 25)
    |> IO.inspect()

    # Map with age deleted
    |> delete_map_key(:age)
    |> IO.inspect()
  end

  defp put_map(map, key, value) do
    Map.put(map, key, value)
  end

  defp delete_map_key(map, key) do
    Map.delete(map, key)
  end
end
