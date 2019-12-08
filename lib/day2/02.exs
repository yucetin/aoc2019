defmodule Day02 do
  def run() do
    read_source()
    # |> calc()
  end

  defp read_source() do
    {:ok, source} = File.read("02.txt")

    String.split(source, ",") |> IO.inspect() |> Enum.map(&String.to_integer/1)
  end
end
