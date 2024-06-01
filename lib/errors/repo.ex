defmodule Errors.Repo do
  use Ecto.Repo,
    otp_app: :errors,
    adapter: Ecto.Adapters.MyXQL
end
