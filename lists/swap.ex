defmodule Swapper do
  def swap([]), do: []

  def swap([a, b | tail]), do: [ b, a | swap(tail)]
end
