defmodule OzzyWeb.PageController do
  use OzzyWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
