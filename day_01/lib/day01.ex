defmodule Day01 do
  @moduledoc """
  Documentation for `Day01`.
  """
  def load_inputs do
    {:ok, inputs} = File.read(Path.join([__DIR__, '..', 'input']))
    inputs
    |> String.split("\n\n")
    |> Enum.map(fn (input) -> String.split(input, "\n",  trim: true) end)
    |> Enum.map(fn (input) -> Enum.map(input, &String.to_integer/1) end)
  end

  def solve_1(inputs) do
    inputs
    |> Enum.map(&Enum.sum/1)
    |> Enum.max
  end

  def solve_2(inputs) do
    inputs
    |> Enum.map(&Enum.sum/1)
    |> Enum.sort(:desc)
    |> Enum.take(3)
    |> Enum.sum
  end
end
