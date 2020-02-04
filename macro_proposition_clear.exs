defmodule Proposition do
  defstruct [:description, yes: 0, no: 0]

  def new(description) do
    %Proposition{description: description}
  end

  def cast(prop, vote, qty) do
    Map.update!(prop, vote, &(&1 + qty))
  end
end

gas_tax = Proposition.new("Gas tax")
gas_tax = Proposition.cast(gas_tax, :yes, 1)

IO.inspect(gas_tax)
