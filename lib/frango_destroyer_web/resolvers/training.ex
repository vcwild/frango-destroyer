defmodule FrangoDestroyerWeb.Resolvers.Training do
  def create(%{input: params}, _context), do: FrangoDestroyer.Trainings.Create.call(params)
end
