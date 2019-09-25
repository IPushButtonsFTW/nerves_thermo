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
  #  IO.puts("Pin: #{p}, Sensor: #{s}")
  #  IO.puts("Temperature: #{t} Humidity: #{h}\n")
  #end

  #def listen({:error, error}) do
  #  IO.puts("Listen event on MyGenServer")
  #  IO.puts("Error: #{error}\n")
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

  def watch do
    {:ok, pid} = Pigpiox.GPIO.watch(26)
    receive do
      {:gpio_leveL_change, gpio, level} -> IO.puts "#{gpio} now at #{level}"
    end
    pid
  end

  def stop(pid) do
    GenServer.stop pid
  end



end
