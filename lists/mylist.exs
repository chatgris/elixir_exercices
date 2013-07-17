defmodule MyList do
  def len([]), do: 0

  def len([_head|tail]), do: 1 + len(tail)

  def square([]), do: []

  def square([head | tail]), do: [head * head | square(tail)]

  def add1([]), do: []

  def add1([head | tail]), do: [head + 1 | add1(tail)]
end
