defmodule FizzBuzz do
  def upto(n) when n > 0 do
    1..n |> Enum.map (fizzbuzz(&1))
  end

  defp fizzbuzz(n) when rem(n, 3) == 0 and rem(n, 5) == 0 do
    IO.puts "FizzBuzz"
  end

  defp fizzbuzz(n) when rem(n, 3) == 0 do
    IO.puts "Fizz"
  end

  defp fizzbuzz(n) when rem(n, 5) == 0 do
    IO.puts "Buzz"
  end

  defp fizzbuzz(n), do: n
end


FizzBuzz.upto(100)
