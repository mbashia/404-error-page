defmodule ErrorsWeb.PostLive.Index do
  use ErrorsWeb, :live_view

  alias Errors.Posts
  alias Errors.Posts.Post

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :post_collection, list_post())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Post")
    |> assign(:post, Posts.get_post!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Post")
    |> assign(:post, %Post{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Post")
    |> assign(:post, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    post = Posts.get_post!(id)
    {:ok, _} = Posts.delete_post(post)

    {:noreply, assign(socket, :post_collection, list_post())}
  end

  defp list_post do
    Posts.list_post()
  end
end
