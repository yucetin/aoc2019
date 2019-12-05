defmodule Day01 do
  def run1() do
    read_source()
    |> calc()
  end

  defp calc([]) do
    0
  end

  defp calc([h | t]) do
    if h > 6 do
      a = fuel_cost(h)
      b = fuel_cost(a)

      a + b + calc(t)
    else
      fuel_cost(h) + calc(t)
    end
  end

  defp fuel_cost(h) do
    floor(h / 3) - 2
  end

  defp read_source() do
    {:ok, source} = File.read("01.txt")

    String.split(source, "\n") |> IO.inspect() |> Enum.map(&String.to_integer/1)
  end
end
