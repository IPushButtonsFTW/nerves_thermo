defmodule NervesThermo do
  #use NervesDht
  @moduledoc """
  Documentation for NervesThermo.
  """

  @doc """
  Hello world.

  ## Examples

      iex> NervesThermo.hello
      :world

  """
  #def listen({:ok, p, s, h, t}) do
  #  IO.puts("Listen event on MyGenServer")
  #  IO.puts("Pin: #{p}, Sensor: #{s}\n")
  #  IO.puts("Temperature: #{t}, Humidity: #{h})\n")
  #end

  #iex> {:ok, dht} = MyGenServer.start_link({2, 22})
  #:ok
  #iex> {:ok, humidity, temperature} = MyGenServer.info(dht)
  #{:ok, 41.3, 27.22}


  def hello do
    "bam2"
  end

  def init do
    #dht = NervesThermo.start_link({26,11})
  end

end
