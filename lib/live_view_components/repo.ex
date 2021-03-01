defmodule LiveViewComponents.Repo do
  use Ecto.Repo,
    otp_app: :live_view_components,
    adapter: Ecto.Adapters.Postgres
end
