defmodule HelloPhoenixWeb.Router do
  use HelloPhoenixWeb, :router

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

  scope "/", HelloPhoenixWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/hello/:user", PageController, :show
    get "/users", PageController, :list
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloPhoenixWeb do
  #   pipe_through :api
  # end
end
