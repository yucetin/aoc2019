defmodule Day02 do
  def run() do
    read_source()
    |> take4
  end

  defp take4(list) do
    list

    Enum.take(4)
    |> process4(list)
    |> IO.inspect()

    take4(list)
  end

  defp process4([99, _, _, _], list), do: IO.puts(list)

  defp process4([1, first, second, third], list) do
    a = list[first] + list[second]
    list[third] = a
  end

  defp process4([2, first, second, third], list) do
    a = list[first] * list[second]
    list[third] = a
  end

  defp read_source() do
    {:ok, source} = File.read("02.txt")

    String.split(source, ",") |> IO.inspect() |> Enum.map(&String.to_integer/1)
  end
end
