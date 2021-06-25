defmodule FrangoDestroyer.UserTest do
  use FrangoDestroyer.DataCase, async: true

  describe "changeset/1" do
    test "when all params are valid, returns a valid user changeset" do
      params = %{
        name: "Vito", email: "vito@ito.com", password: "378924523456"
      }

      response = FrangoDestroyer.User.changeset(params)

      assert %Ecto.Changeset{
        valid?: true,
        changes: %{name: "Vito", email: "vito@ito.com", password: "378924523456"},
        errors: []
      } = response
    end

    test "when there are invalid params, returns an invalid changeset" do
      params = %{
        name: "R", email: "fuskinha@fusca.com"
      }

      response = FrangoDestroyer.User.changeset(params)

      expected_response = %{
        name: ["should be at least 2 character(s)"],
        password: ["can't be blank"]
      }

      assert errors_on(response) == expected_response
    end
  end
end
