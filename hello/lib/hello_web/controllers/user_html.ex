defmodule HelloWeb.UserHTML do
  use HelloWeb, :html
  embed_templates "user_html/*"

  alias Hello.Accounts


  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end

end
