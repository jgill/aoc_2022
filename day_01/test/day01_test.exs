defmodule Day01Test do
  use ExUnit.Case
  doctest Day01

  test "first problem" do
    inputs = [[1000,2000,3000],[4000],[5000,6000],[7000,8000,9000],[10000]]
    assert Day01.solve_1(inputs) == 24000
  end

  test "second problem" do
    inputs = [[1000,2000,3000],[4000],[5000,6000],[7000,8000,9000],[10000]]
    assert Day01.solve_2(inputs) == 45000
  end
end
