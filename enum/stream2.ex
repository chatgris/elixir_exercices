IO.puts File.read!("/usr/share/dict/words")
  |> IO.stream
  |> Enum.max(String.length(&1))
