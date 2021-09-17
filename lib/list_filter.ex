defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> filter_numbers()
    |> convert_in_numbers()
    |> filter_odds()
    |> Enum.count()
  end

  defp filter_numbers(list) do
    Enum.filter(list, fn e -> String.match?(e, ~r/\d/) end)
  end

  defp convert_in_numbers(list) do
    Enum.map(list, fn e -> String.to_integer(e) end)
  end

  defp filter_odds(list) do
    Enum.filter(list, fn e -> Integer.is_odd(e) end)
  end
end
