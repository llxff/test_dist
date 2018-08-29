defmodule Tasks do
  def run do
    IO.inspect GenServer.call(Server, :status)
  end
end