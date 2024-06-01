defmodule Errors.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Errors.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        description: "some description",
        title: "some title"
      })
      |> Errors.Posts.create_post()

    post
  end
end
