defmodule Conditions.MyCond do
  def evaluete_number(number) do
    cond do
      number > 5 -> "The number is greater than 5"
      number < 5 -> "The number is less than 5"
      true -> "The number is equal to 5"
    end
  end
end
