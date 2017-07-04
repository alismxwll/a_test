# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Affiliate.Repo.insert!(%Affiliate.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Affiliate.Repo.delete_all Affiliate.User

Affiliate.User.changeset(%Affiliate.User{}, %{name: "Test User", email: "testuser@example.com", password: "secret", password_confirmation: "secret"})
|> Affiliate.Repo.insert!

Affiliate.Repo.delete_all Affiliate.Product

Affiliate.Product.changeset(%Affiliate.Product{}, %{title: "Product Title", body: "Product description", user_id: 1})  
|> Affiliate.Repo.insert!
