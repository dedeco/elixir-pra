
age = IO.gets("What's your age?")

defmodule Voter do
  def eligibility(age) when is_binary(age) do
    eligibility(Integer.parse(age))
  end

  def eligibility({age, _}) do
    eligibility(age)
  end

  def eligibility(age) when is_integer(age) and age < 18 do
    "You can't vote"
  end

  def eligibility(age) when is_integer(age) and age < 25 do
    "You can vote"
  end

  def eligibility(:error) do
    "Invalid number!"
  end

  def eligibility(_age) do
    "You can vote and run for the office"
  end
end

message = Voter.eligibility(age)

IO.puts(message)
