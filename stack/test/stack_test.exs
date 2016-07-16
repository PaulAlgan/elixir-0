defmodule StackTest do
  use ExUnit.Case
  doctest Stack

  test "start stack" do
    stack = Stack.start()
    assert Process.alive?(stack)
  end

  test "push 1" do
    stack = Stack.start()
    assert Process.alive?(stack)
    Stack.push(stack, 1) == :ok
  end

  test "pop 1" do
    stack = Stack.start()
    assert Process.alive?(stack)
    assert Stack.pop(stack) == nil
  end

  test "push 1 pop 1" do
    stack = Stack.start()
    assert Process.alive?(stack)
    assert Stack.push(stack, 1) == :ok
    assert Stack.pop(stack) == 1
  end



end
