defmodule Day02 do
  @moduledoc """
  Documentation for `Day02`.
  """
  def load_inputs do
    {:ok, inputs} = File.read(Path.join([__DIR__, '..', 'input']))
    inputs
    |> String.split("\n", trim: true)
  end

  @score_list %{
    "A X" => 4,
    "A Y" => 8,
    "A Z" => 3,
    "B X" => 1,
    "B Y" => 5,
    "B Z" => 9,
    "C X" => 7,
    "C Y" => 2,
    "C Z" => 6
  }

  @score_list_2 %{
    "A X" => 3,
    "A Y" => 4,
    "A Z" => 8,
    "B X" => 1,
    "B Y" => 5,
    "B Z" => 9,
    "C X" => 2,
    "C Y" => 6,
    "C Z" => 7
  }

  def score(move) do
    @score_list[move]
  end

  def score_2(move) do
    @score_list_2[move]
  end

  def solve_1(inputs) do
    inputs
    |> Enum.map(&Day02.score/1)
    |> Enum.sum
  end

  def solve_2(inputs) do
    inputs
    |> Enum.map(&Day02.score_2/1)
    |> Enum.sum
  end
end
