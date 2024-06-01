defmodule Errors.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "post" do
    field :description, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end
end
