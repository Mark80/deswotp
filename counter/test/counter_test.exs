defmodule CounterTest do
  use ExUnit.Case

  test "inc/1 increments an integer values" do
    assert Counter.Core.inc(1) == 2
  end
end
