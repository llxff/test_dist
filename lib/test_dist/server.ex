defmodule Server do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init(_args) do
    {:ok, nil}
  end

  def handle_call(:status, _from, state) do
    {:reply, "Hello, there!", state}
  end
end