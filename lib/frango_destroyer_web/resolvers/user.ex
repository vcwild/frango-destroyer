defmodule FrangoDestroyerWeb.Resolvers.User do
  def get(%{id: user_id}, _context), do: FrangoDestroyer.Users.Get.call(user_id)

  def create(%{input: params}, _context), do: FrangoDestroyer.Users.Create.call(params)
end
