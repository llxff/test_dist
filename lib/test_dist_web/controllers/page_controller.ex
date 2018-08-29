defmodule TestDistWeb.PageController do
  use TestDistWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
