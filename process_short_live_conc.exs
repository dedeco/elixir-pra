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

defmodule Worker do
  def create_process(fun) do
    pid = self()
    spawn( fn ->
      send(pid, {self(), fun.()})
    end)
  end

  def wait(pid) do
    receive do
      {^pid, result} -> result
    end
  end

end

voting_machine_live
|> Enum.map(fn ip -> Worker.create_process(fn ->
                    simutated_api_call.(ip)
                    end)
            end)
|> IO.inspect()
|> Enum.map(&Worker.wait/1)
|> Enum.sum()
|> IO.inspect()

#:timer.sleep(300)
# Process.info(self(), :messages) |> IO.inspect()
