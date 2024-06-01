defmodule ErrorsWeb.PageController do
  use ErrorsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
