defmodule Day00 do
  @moduledoc """
  Documentation for `Day03`.
  """
  def load_input do
    File.read!(Path.join([__DIR__, '..', 'input']))
  end

  def solve_1(input) do
    input
    |> parse_input
  end

  def solve_2(input) do
    input
    |> parse_input
  end

## Implementation

  defp parse_input(input) do
    input
    |> String.split("\n", trim: true)
  end
end
