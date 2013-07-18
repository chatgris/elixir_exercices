defmodule WeatherHistory do
  def for_location_27([]), do: []

  def for_location_27([[time, 27, temp, rain] | tail]) do
    [[time, 27, temp, rain | for_location_27(tail)]]
  end

  def for_location_27([ _ | tail]), do: for_location_27(tail)

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
