defmodule Util do
  def sum(list), do: do_sum(list, 0)
  defp do_sum([head | tail], total), do: do_sum(tail, total + head)
  defp do_sum([], total), do: total
end

sequence = [1,2,3,4,5]

Util.sum(sequence) |> IO.puts()
