defmodule Day04 do
  @moduledoc """
  Documentation for `Day03`.
  """
  def load_input do
    File.read!(Path.join([__DIR__, '..', 'input']))
  end

  def solve_1(input) do
    input
    |> parse_input
    |> Enum.filter(&enclosed_sections/1)
    |> length
  end

  def solve_2(input) do
    input
    |> parse_input
    |> Enum.filter(&overlap_sections/1)
    |> length
  end

## Implementation

  defp enclosed_sections([[a,b], [c,d]]) when a <= c and b >= d, do: true
  defp enclosed_sections([[a,b], [c,d]]) when a >= c and b <= d, do: true
  defp enclosed_sections(_), do: false 

  defp overlap_sections([[a,b], [c,d]]) when a <= c and b >= d, do: true
  defp overlap_sections([[a,b], [c,d]]) when a >= c and b <= d, do: true
  defp overlap_sections([[a,b], [c,_d]]) when a <= c and b >= c, do: true
  defp overlap_sections([[a,b], [_c,d]]) when a <= d and b >= d, do: true
  defp overlap_sections(_), do: false 

  defp split_range(assignments) do
    assignments
    |> Enum.map(fn section ->
        section
        |> String.split("-", trim: true) 
        |> Enum.map(&String.to_integer/1) 
      end)
  end

  defp parse_input(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&String.split(&1, ",", trim: true))
    |> Enum.map(&split_range/1)
  end
end
