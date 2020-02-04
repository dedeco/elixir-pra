defmodule Party do

  @mascots %{
    democratic: "donkey",
    republican: "elephant",
    libertian: "statue",
    green: "plant",
    constitution: "eagle",
    whig: "owl"
  }

  def mascot(party) do
    @mascots[party]
  end

  def logo(party, size) do
    party_mascot = mascot(party)
    do_logo(party_mascot, size)
  end

  defp do_logo(mascot, size) when is_nil(mascot) do
    do_logo("other", size)
  end

  defp do_logo(mascot, :small), do: "#{mascot}_small.png"
  defp do_logo(mascot, _size), do: "#{mascot}_normal.png"

end
