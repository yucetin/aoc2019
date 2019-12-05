defmodule Day01 do
  def calc([]) do
    0
  end

  def calc([h | t]) do
    floor(h / 3) + calc(t)
  end

  defp read_source() do
    {:ok, input} = File.read("./lib/day01/input.txt")

    String.split(input, "\n") |> Enum.map(&String.to_integer/1)
  end
end
