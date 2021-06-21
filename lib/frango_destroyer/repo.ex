defmodule FrangoDestroyer.Repo do
  use Ecto.Repo,
    otp_app: :frango_destroyer,
    adapter: Ecto.Adapters.Postgres
end
