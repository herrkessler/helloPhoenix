defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller

  alias HelloPhoenix.Repo

  def index(conn, _params) do
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> render("index.html")
  end

  def show(conn, %{"user" => user}) do
    json conn, %{"user" => user}
  end

  def list(conn, _params) do
    users = Repo.all(HelloPhoenix.User)
    json conn, users
  end
end
