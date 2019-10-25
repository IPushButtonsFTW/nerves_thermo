defmodule NervesThermo do
  use NervesDht

  #def listen({:ok, p, s, h, t}) do
  #  IO.puts("Listen event on MyGenServer")
  #  IO.puts("Pin: #{p}, Sensor: #{s}")
  #  IO.puts("Temperature: #{t} Humidity: #{h}\n")
  #end

  #def listen({:error, error}) do
  #  IO.puts("Listen event on MyGenServer")
  #  IO.puts("Error: #{error}\n")
  #end

  #iex> {:ok, dht} = NervesThermo.start_link({2, 22})
  #:ok
  #iex> {:ok, humidity, temperature} = NervesThermo.info(dht)
  #{:ok, 41.3, 27.22}


  def init do
    dht = NervesThermo.start_link({26,11})
  end

  def monitor(dht) do
    IO.inspect((NervesThermo.info dht))
    Process.sleep 2000
    monitor(dht)
  end

end
