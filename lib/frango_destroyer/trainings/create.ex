defmodule FrangoDestroyer.Trainings.Create do
  alias FrangoDestroyer.{Repo, Training}

  def call(params) do
    params
    |> Training.changeset()
    |> Repo.insert()
  end
end
