defmodule HelloWeb.UserController do
  use HelloWeb, :controller

  alias Hello.Accounts

  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, :index, users: users)
  end

  def show(conn, %{"id" => id}) do
    user = Accounts.get_user(String.to_integer(id))
    render(conn, :show, user: user)
  end
end
