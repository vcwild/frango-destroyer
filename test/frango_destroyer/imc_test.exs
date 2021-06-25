defmodule FrangoDestroyer.IMCTest do
  use ExUnit.Case, async: true

  describe "calculate/1" do
    test "when the file exists, return data" do
      params = %{
        "filename" => "students.csv"
      }

      response = FrangoDestroyer.IMC.calculate(params)

      assert "teste" == response
    end
  end
end
