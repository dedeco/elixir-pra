
age = IO.gets("What's your age?")

voter_eligibility = fn(age) ->
  case Integer.parse(age) do
    {age, _ } when age < 18 -> "You can't vote"
    {age, _ } when age < 25 -> "You can vote"
    {_age, _} -> "You can vote and run to the office"
    :error -> "Invalid number!!"
  end
end

message = voter_eligibility.(age)

IO.puts(message)
