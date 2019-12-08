defmodule Day01 do
  def run1() do
    read_source()
    |> calc()
  end

  defp calc([]) do
    0
  end

  defp calc([h | t]) do
    cost(h) + calc(t)
  end

  defp cost(mass) do
    cost = Float.floor(mass / 3) - 2

    if cost > 6 do
      cost = cost + cost(cost)
    else
      cost
    end
  end

  defp read_source() do
    {:ok, source} = File.read("01.txt")

    String.split(source, "\n") |> IO.inspect() |> Enum.map(&String.to_integer/1)
  end
end
