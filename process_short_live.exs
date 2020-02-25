voting_machine_live = [
  "10.0.1.1",
  "10.0.1.2",
  "10.0.1.3",
  "10.0.1.4",
  "10.0.1.5",
  "10.0.1.6",
  "10.0.1.7",
  "10.0.1.8",
  "10.0.1.9",
  "10.0.1.10",
]

simutated_api_call = fn _fp ->
  votes = Enum.random(225..275)
  :timer.sleep(votes)
  votes
end

voting_machine_live
|> Enum.map(simutated_api_call)
|> Enum.sum()
|> IO.inspect()
