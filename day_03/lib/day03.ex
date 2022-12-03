defmodule Day03 do
  @moduledoc """
  Documentation for `Day03`.
  """
  def load_input do
    File.read!(Path.join([__DIR__, '..', 'input']))
  end

  def solve_1(input) do
    {_, result} = input
    |> parse_input
    |> Enum.map(&split_in_two/1)
    |> Enum.flat_map(&find_common/1)
    |> Enum.map_reduce(0, fn item, acc -> priority = calculate_priority(item); {priority, acc + priority} end)

    result
  end

  def solve_2(input) do
    input
    |> parse_input
    |> Enum.chunk_every(3)
    |> Enum.flat_map(&find_common/1)
    |> Enum.map(&calculate_priority/1)
    |> Enum.sum
  end

## Implementation

  defp parse_input(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&String.split(&1, "", trim: true))
  end

  defp split_in_two(compartments) do
    with compartment_size <- Integer.floor_div(length(compartments), 2) do
      compartments
      |> Enum.chunk_every(compartment_size)
    end
  end

  defp find_common([head|tail]) do
    tail
    |> Enum.reduce(MapSet.new(head), fn compartment, acc ->
         MapSet.intersection(acc, MapSet.new(compartment))
       end)
    |> MapSet.to_list
  end

  defp calculate_priority(item) do
    with codepoint <- String.to_charlist(item) |> List.first do
      codepoint
      |> codepoint_to_priority
    end
  end

  defp codepoint_to_priority(codepoint) when codepoint < 91, do: codepoint - 38
  defp codepoint_to_priority(codepoint) when codepoint < 123, do: codepoint - 96
end
