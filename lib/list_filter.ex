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
    Enum.map(list, &String.to_integer/1)
  end

  defp filter_odds(list) do
    Enum.filter(list, &Integer.is_odd/1)
  end
end
