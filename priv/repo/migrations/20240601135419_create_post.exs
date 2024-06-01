defmodule Errors.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:post) do
      add :title, :string
      add :description, :string

      timestamps()
    end
  end
end
