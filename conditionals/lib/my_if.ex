defmodule Conditions.MyIf do
  def evaluete_number(number) do
    if number > 5 do
      "The number is greater than 5"
    else
      "The number is less than 5"
    end
  end

  def evaluete_number_2(number) when number > 5 do
    "The number is greater than 5"
  end

  def evaluete_number_2(number) when number < 5 do
    "The number is less than 5"
  end

  def evaluete_number_2(number) when number == 5 do
    "The number is equal to 5"
  end
end
