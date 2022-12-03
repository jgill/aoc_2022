defmodule Day01Test do
  use ExUnit.Case

  test "first problem" do
    inputs = ["A Y", "B X", "C Z"]
    assert Day02.solve_1(inputs) == 15
  end

  test "second problem" do
    inputs = ["A Y", "B X", "C Z"]
    assert Day02.solve_2(inputs) == 12
  end
end
