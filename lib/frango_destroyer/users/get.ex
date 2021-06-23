defmodule FrangoDestroyer.Users.Get do
  alias FrangoDestroyer.{User, Repo}

  def call(id) do
    id
    |> Ecto.UUID.cast()
    |> handle_response()
  end

  def handle_response({:ok, uuid}) do
    case Repo.get(User, uuid) do
      nil -> {:error, "User not found"}
      user -> {:ok, user}
    end
  end

  def handle_response(:error) do
    {:error, "Invalid UUID"}
  end

end
