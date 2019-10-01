defmodule Hangman.Application do
  use Application
  alias Hangman.Server

  def start(_type, _args) do
    import Supervisor.Spec

    children = [worker(Server, [])]

    options = [
      name: Hangman.Supervisor,
      strategy: :simple_one_for_one
    ]

    Supervisor.start_link(children, options)
  end
end
