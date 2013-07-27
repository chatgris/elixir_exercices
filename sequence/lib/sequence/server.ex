defmodule Sequence.Server do
  use GenServer.Behaviour
  @vsn "1"

  def start_link(current_number) do
    :gen_server.start_link({:local, :sequence}, __MODULE__, current_number, [])
  end

  def next_number do
    :gen_server.call :sequence, :next_number
  end

  def increment_number(delta) do
    :gen_server.cast :sequence, {:increment_number, delta}
  end

  def init(current_number) when is_number(current_number) do
    {:ok, {current_number, 1}}
  end

  def handle_call(:next_number, _from, {current_number, delta}) do
    { :reply, current_number, {current_number + delta, delta}}
  end

  def handle_cast({:increment_number, delta}, {current_number, _old_delta}) do
    { :noreply, {current_number + delta, delta}}
  end

  def format_status(_reason, [_pdict, state]) do
    [data: [{'State', "My current state id '#{inspect state}', and I'm happy"}]]
  end

  def code_change("0", oldState, _extra) do
    IO.puts "Changing code from 0 to 1"
    { :ok, {oldState, 1}}
  end
end
