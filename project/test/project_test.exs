defmodule ProjectTest do
  use ExUnit.Case
  doctest Project

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "the truth 2" do
    assert [1, 2, 3] == [1, 2, 3]
  end

  test "hello test" do
    Project.double(2) == 4
  end

end
