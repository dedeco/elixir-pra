
age = IO.gets("What's your age?")

defmodule Voter do

  def eligibility(age) when is_binary(age) or is_integer(age) do
    do_eligibility(age)
  end

  def eligibility(_age) do
      "Invalid number!"
  end

  defp do_eligibility(age) when is_binary(age) do
    do_eligibility(Integer.parse(age))
  end

  defp do_eligibility({age, _}) do
    do_eligibility(age)
  end

  defp do_eligibility(age) when is_integer(age) and age < 18 do
    "You can't vote"
  end

  defp do_eligibility(age) when is_integer(age) and age < 25 do
    "You can vote"
  end

  defp do_eligibility(_age) do
    "You can vote and run for the office"
  end
end

message = Voter.eligibility(age)

IO.puts(message)
