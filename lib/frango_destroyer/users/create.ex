defmodule FrangoDestroyer.Users.Create do
  alias FrangoDestroyer.{User, Repo}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
