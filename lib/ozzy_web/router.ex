defmodule OzzyWeb.Router do
  use OzzyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", OzzyWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/hello", HelloController, :index
  end


  # Other scopes may use custom stacks.
  scope "/api", OzzyWeb do
    pipe_through :api

    get "/metadata", MetadataController, :index
    get "/metadata/:dirname", MetadataController, :show
  end
end
