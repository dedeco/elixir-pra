defmodule Util do
  defmacro reverse({:+, context, [a, b]}) do
    quote do
      unquote(a) - unquote(b)
    end
  end
end
