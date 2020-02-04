

tally = %{will_ferrell: 1, kristen_wiig: 2}

count = Map.get(tally, :will_ferrell, 0) + 1
tally = Map.put(tally, :will_ferrell, count)

IO.puts(inspect(tally))

tally = Map.update(tally, :will_ferrell, 1, fn num -> num + 1 end )

IO.puts(inspect(tally))
