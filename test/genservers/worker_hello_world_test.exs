defmodule WorkerHelloWorldTest do
  use ExUnit.Case

  test "should return 1" do
    assert 1 == WorkerHelloWorld.do_something()
  end

  test "should return first item from list" do
    dictionary = %{
        "first" => [1,2,3],
        "second" => [4,5,6]
    }

    assert 1 == List.first(Map.get(dictionary, "first"))
    assert 1 == dictionary |> Map.get("first") |> List.first
  end
  
end