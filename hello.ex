defmodule Hello2 do

  def say do
    IO.puts "hello"
  end

  def doubleList([]) do
    []
  end

  def doubleList([head | tail]) do
    [head *2 | doubleList(tail)]
  end





  def reverse([]) do
    []
  end

  def reverse([h | t]) do
    reverse(t) ++ [h]
  end




  def reverseList(l) do
    reverseList(l, [])
  end

  defp reverseList([], acc) do
    acc
  end

  defp reverseList([h|t], acc) do
    reverseList(t, [h | acc])
  end



  def reverseList2(l) do
    reverseList(l, [])
  end

  defp reverseList2(l, acc) do
    case l do
      [] -> acc
      [h | t] -> reverseList(t, [h | acc])
    end
  end


  def sum(l) do
    sum(l, 0)
  end

  def sum(l, s) do
    case l do
      [] -> s
      [h | t] -> sum(t, h+s)
    end
  end



  def map(l, f) do
    case l do
      [] -> []
      [h | t] -> [f.(h) | map(t, f)]
    end
  end


  def reduce(l, acc, f) do
    case l do
     [] -> acc
     [h | t] -> reduce(t, f.(h, acc), f)
    end
  end


  def process(sender) do
    IO.puts("Sleep")
    :timer.sleep(10_000) # : call module from erlang
    #IO.puts("Die")
    send(sender, "Die")
  end


  def process2() do
    receive do
      msg -> IO.puts msg
    end
  end


end
