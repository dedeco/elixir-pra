defmodule Util do
  def double(list) when is_list(list), do: do_double(list, [])
  defp do_double([head | tail], new_list) do
    do_double(tail, List.insert_at(new_list,-1, head * 2))
  end
  defp do_double([], new_list), do: new_list
end

list = [1,2,3,4,5]

double = Util.double(list)

IO.puts(inspect(double))
