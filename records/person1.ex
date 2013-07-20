defrecord Person, name: "", age: 0 do
  def say_hello(person, greeting) do
    IO.puts "#{greeting} #{person.name}"
  end
end

m = Person.new name: "Methuelah", age: 969

Person.say_hello m, "You look good for your age"
