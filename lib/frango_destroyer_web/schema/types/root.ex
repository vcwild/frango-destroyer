defmodule FrangoDestroyerWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias FrangoDestroyerWeb.Resolvers.User, as: UserResolver

  import_types FrangoDestroyerWeb.Schema.Types.User

  @desc "Root query representation logic"
  object :root_query do
    field :get_user, type: :user do
      arg :id, non_null(:uuid4)

      resolve fn params, context -> UserResolver.get(params, context) end
    end
  end

  @desc "Root mutation representation logic"
  object :root_mutation do
    field :create_user, type: :user do
      arg :input, non_null(:create_user_input)

      resolve fn params, context -> UserResolver.create(params, context) end
    end
  end
end
