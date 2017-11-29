defmodule TwatterWeb.HomeController do
  use TwatterWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
