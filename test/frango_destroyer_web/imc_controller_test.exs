defmodule FrangoDestroyerWeb.IMCControllerTest do
  use FrangoDestroyerWeb.ConnCase, async: true

  describe "index/2" do
    test "when all params are valid, returns the imc info", %{conn: conn} do
      params = %{"filename" => "students.csv"}

      response =
        conn
        |> get(Routes.imc_path(conn, :index, params))
        |> json_response(:ok)

      assert "test" = response
    end
  end
end
