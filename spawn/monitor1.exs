import :timer, only: [ sleep: 1]

defmodule Monitor1 do
  def sad_method do
    sleep 500
    exit(99)
  end

  def run do
    Process.spawn_monitor(Monitor1, :sad_method, [])

    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED: #{inspect msg}"
    after 1000 ->
      IO.puts "Nothing happened as fas as I am concerned"
    end
  end
end


