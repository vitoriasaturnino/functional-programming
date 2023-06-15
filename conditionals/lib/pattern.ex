defmodule Conditions.Pattern do
  def change_file(file_name) do
    file_name
    |> File.read()
    |> change()
    |> handle_write()
  end

  defp change({:ok, content}) do
    content = content <> "abobora"
    File.write("text.txt", content)
  end

  defp change({:error, _reason} = error), do: error

  defp handle_write(:ok), do: {:ok, "Success, file changed!"}
  defp handle_write({:error,  _reason} = error), do: error
end
