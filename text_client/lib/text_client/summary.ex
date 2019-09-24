defmodule TextClient.Summary do
  def display(game = %{tally: tally}) do
    IO.puts([
      "\n",
      "Word so far: #{Enum.join(tally.letters, " ")}\n",
      "Used letters: #{Enum.join(tally.used, ", ")}\n",
      "Guesses left: #{tally.turns_left}\n"
    ])

    game
  end
end
