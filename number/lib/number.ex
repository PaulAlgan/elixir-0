defmodule Number do

  def start() do
   #spawn fn -> process(0) end
    {:ok, counter} = Agent.start(fn -> 0 end)
    counter
  end

  def inc(pid) do
    #send(pid, {:inc, self()})
    #receive do
    #  {:result, n} -> n
    #end

    Agent.update(pid, fn n -> n + 1 end)
    Agent.get(pid, fn n -> n end)
  end

  def dec(pid) do
    #send(pid, {:dec, self()})
    #receive do
    #  {:result, n} -> n
    #end

    Agent.update(pid, fn n -> n - 1 end)
    Agent.get(pid, fn n -> n end)

  end


  def process(n) do
    receive do
      {:inc, pid} ->
        n = n + 1
        send(pid, {:result, n})
        process(n)

      {:dec, pid} ->
        n = n - 1
        send(pid, {:result, n})
        process(n)
    end

  end

end
