
age = IO.gets("What's your age?")

defmodule Voter do
  def eligibility(age) do
    case Integer.parse(age) do
      {age, _ } when age < 18 -> "You can't vote"
      {age, _ } when age < 25 -> "You can vote"
      {_age, _} -> "You can vote and run to the office"
      :error -> "Invalid number!!"
    end
  end
end

message = Voter.eligibility(age)

IO.puts(message)
