defmodule Conditions.MyCase do
  def change_file(file_name) do
    case File.read(file_name) do
      {:ok, content} ->
        content
        |> change()
        |> handle_write()

      {:error, _reason} = error ->
        error
    end
  end

  defp change(content) do
    content = content <> "abobora"
    File.write("text.txt", content)
  end

  defp handle_write(:ok), do: {:ok, "Success, file changed!"}
  defp handle_write({:error,  _reason} = error), do: error
end
