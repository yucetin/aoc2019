defmodule Day02 do
  def run() do
    origin_list = read_source()

    ops(origin_list, origin_list)
    |> IO.inspect()
  end

  defp ops([1 | [f | [s | [t | rest]]]], altered_list) do
    altered_list =
      List.update_at(altered_list, t, fn _ ->
        Enum.at(altered_list, f) + Enum.at(altered_list, s)
      end)

    ops(rest, altered_list)
  end

  defp ops([2 | [f | [s | [t | rest]]]], altered_list) do
    altered_list =
      List.update_at(altered_list, t, fn _ ->
        Enum.at(altered_list, f) * Enum.at(altered_list, s)
      end)

    ops(rest, altered_list)
  end

  defp ops([99 | [f | [s | [t | rest]]]], altered_list) do
    altered_list
  end

  defp read_source() do
    {:ok, source} = File.read("02.txt")

    String.trim(source, "\n")
    |> String.split(",")
    |> IO.inspect()
    |> Enum.map(&String.to_integer/1)
  end
end
