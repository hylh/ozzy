defmodule OzzyWeb.MetadataController do
  use OzzyWeb, :controller
  require Logger

  def index(conn, _params) do
      Logger.debug "You forgot dirname!"
      json conn, "Empty json"
  end

  def show(conn, %{"dirname" => info}) do
    Logger.debug "Got info: #{info}"
    info = %{name: "Jon", age: 20}
    json conn, info
  end
end
