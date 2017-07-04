defmodule Affiliate.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :title, :string
      add :body, :text
      add :user_id, references(:users)

      timestamps()
    end

  end
end
