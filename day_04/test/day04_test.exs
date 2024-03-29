defmodule Day04Test do
  use ExUnit.Case

  test "first problem" do
    inputs = ~S"""
    2-4,6-8
    2-3,4-5
    5-7,7-9
    2-8,3-7
    6-6,4-6
    2-6,4-8
    """
    assert Day04.solve_1(inputs) == 2
  end

  test "second problem" do
    inputs = ~S"""
    2-4,6-8
    2-3,4-5
    5-7,7-9
    2-8,3-7
    6-6,4-6
    2-6,4-8
    """
    assert Day04.solve_2(inputs) == 4
  end
end
