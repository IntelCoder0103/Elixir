defmodule Hello.Accounts do
  alias Hello.Accounts.User

  def list_users do
    [
      %User{id: 1, name: "John", username: "john"},
      %User{id: 2, name: "Jane", username: "jane"},
      %User{id: 3, name: "Bob", username: "bob"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
