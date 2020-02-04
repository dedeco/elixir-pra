
defmodule Util do
  def compose(data, outer_function, inner_function) do
    outer_function.(inner_function.(data))
  end
end


paragraph = """
The 2020 United States presidential election is scheduled for Tuesday, November 3, 2020.
It will be the 59th quadrennial presidential election. Voters will select presidential electors
who in turn on December 14, 2020,[1] will either elect a new president and vice president
or re-elect the incumbents. The series of presidential primary elections and caucuses are
scheduled to be held during the first six months of 2020. This nominating process is also an
indirect election, where voters cast ballots selecting a slate of delegates to a political
party's nominating convention, who then in turn elect their party's nominees for president
and vice president.
"""

word_count = Util.compose(paragraph, &length/1, &String.split/1)

IO.puts(word_count)
