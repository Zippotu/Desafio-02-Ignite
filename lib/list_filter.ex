defmodule ListFilter do
  def call(list) do
    list
    |> Enum.map(fn x -> "#{x}" end)
    |> Enum.flat_map(fn x -> parseInteger(x) end)
    |> Enum.filter(fn x -> rem(x, 2) != 0 end)
  end

  defp parseInteger(string) do
    case Integer.parse(string) do
      {int, _rest} -> [int]
      :error -> []
    end
  end
end

# Tô 🌹🌹
