handle_open = function do
  {:ok, file} -> "First line: #{IO.readline(file)}"
  {_, error}  -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("handle_open.exs"))
IO.puts handle_open.(File.open("truc"))
