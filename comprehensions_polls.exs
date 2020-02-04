propositions = [
  %{id: 1, state: "CA", description: "Highway Bond"},
  %{id: 2, state: "CA", description: "Eliminate Daylight Saving"},
  %{id: 3, state: "CA", description: "Fuel Tax"},
  %{id: 4, state: "CA", description: "Carbon Tax"},
  %{id: 5, state: "CA", description: "Grocery Tax"}
]

locations = [
  %{id: 1, state: "CA", address: "755 Morse St", ballot_type: 20},
  %{id: 2, state: "CA", address: "200 Onondaga Ave", ballot_type: 10},
  %{id: 3, state: "CA", address: "1261 Geneva Ave", ballot_type: 30},
  %{id: 4, state: "CW", address: "62 Santa Rosa St", ballot_type: 30}
]

state = "CA"
ballot_type = [20, 30]

polling_props =
  for prop = %{state: ^state} <- propositions,
      loc = %{state: ˆstate} <- locations,
      loc.ballot_type in ballot_type do
    %{
      prop_id: prop.id,
      state: state,
      pro_description: prop.description,
      location_id: loc.id,
      address: loc.address
    }
  end

IO.inspect(polling_props)
