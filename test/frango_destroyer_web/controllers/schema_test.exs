defmodule FrangoDestroyerWeb.SchemaTest do
  use FrangoDestroyerWeb.ConnCase, async: true

  alias FrangoDestroyer.User
  alias FrangoDestroyer.Users.Create

  describe "user query" do
    test "when a valid user id is given, returns the user", %{conn: conn} do
      params = %{email: "vito@ito.com", name: "Vitao", password: "347893457895789"}

      {:ok, %User{id: user_id}} = Create.call(params)

      query = """
      {
        getUser(id: "#{user_id}"){
          name
          email
        }
      }
      """

      expected_response = %{
        "data" => %{
          "getUser" => %{
            "email" => "vito@ito.com",
            "name" => "Vitao"
          }
        }
      }

      response =
        conn
        |> post("/api/graphql", %{query: query})
        |> json_response(:ok)

      assert expected_response == response
    end
  end

  describe "users mutation" do
    test "when all params are valid, creates a user", %{conn: conn} do
      mutation = """
        mutation {
          createUser(
            input: {
              name: "Vito",
              email: "vito@tor.com",
              password: "154246"
            }
          ) {
            email
            name
          }
        }
      """

      expected_response = %{
        "data" => %{
          "createUser" => %{"email" => "vito@tor.com", "name" => "Vito"}
        }
      }

      response =
        conn
        |> post("/api/graphql", %{query: mutation})
        |> json_response(:ok)

      assert expected_response == response
    end
  end
end
