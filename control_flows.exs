
age = IO.gets("What's your age?")

{age, _ } = Integer.parse(age)

message =
  cond do
    age < 18 -> "You can't vote"
    age < 25 -> "You can vote"
    true -> "You can vote and run for the office"
  end

IO.puts(message)
