defrecord Person, name: "", age: 0 do
  def say_hello(greeting, person) do
    IO.puts "#{greeting} #{person.name}"
  end
end

m = Person.new name: "Methuelah", age: 969

m.say_hello "You look good for your age"
