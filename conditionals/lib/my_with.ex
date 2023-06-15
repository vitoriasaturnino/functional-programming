defmodule Conditions.MyWith do
  def change_file(filename) do
    # o with é bastante utilizado em controllers, ele retorna o erro automaticamente
    with {:ok, content} <- File.read(filename),
        :ok <- change(content) do
      {:ok, "Success, file changed!"}
    end
  end

  defp change(content) do
    content = content <> "abobora"
    File.write("text.txt", content)
  end
end
