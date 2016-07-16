defmodule NumberTest do
  use ExUnit.Case
  doctest Number


  test "Start" do
    pid = Number.start()
    assert Process.alive?(pid)
  end

  test "Increase 1" do
    pid = Number.start()
    assert Process.alive?(pid)
    assert Number.inc(pid) == 1
  end


  test "Increase 1 Decrease 1" do
    pid = Number.start()
    assert Process.alive?(pid)
    assert Number.inc(pid) == 1
    assert Number.dec(pid) == 0
  end

end
