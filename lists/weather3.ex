defmodule WeatherHistory do
  def for_location([], target_loc), do: []

  def for_location([ head = [_, target_loc, _, _] | tail], target_loc) do
    [ head | for_location(tail, target_loc)]
  end

  def for_location([_ | tail], target_loc), do: for_location(tail, target_loc)

  def test_data do
    [
      [1366225622, 26, 15, 0.125],
      [1366225922, 27, 15, 0.125],
      [1366227622, 26, 15, 0.125],
      [1366220622, 27, 15, 0.125],
      [1366225642, 26, 15, 0.125]
    ]
  end
end
