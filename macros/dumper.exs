defmodule My do
  defmacro macro(params) do
    IO.inspect params
  end
end

defmodule Test do
  require My

  My.macro :atom
  My.macro 1
  My.macro 1.0
  My.macro [1, 2, 3]
  My.macro "binaries"
  My.macro {1, 2}
  My.macro do: 1
  My.macro do: (a = 1; a + a)
end
