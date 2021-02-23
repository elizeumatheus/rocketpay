defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "should sum the numbers inside from file with a certain name" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "should return an error when the file doesn't exists" do
      response = Numbers.sum_from_file("letters")

      expected_response = {:error, %{message: "Invalid file"}}

      assert response == expected_response
    end
  end
end
