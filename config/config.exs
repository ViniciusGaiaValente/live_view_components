# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_components,
  ecto_repos: [LiveViewComponents.Repo]

# Configures the endpoint
config :live_view_components, LiveViewComponentsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tEjP+3EbC9yNlB44RSdVlefXyumbAvm3TQ2Y4VjwIU/dQ8o2WliWA0VK7C8VFSi2",
  render_errors: [view: LiveViewComponentsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewComponents.PubSub,
  live_view: [signing_salt: "9xn4r8VJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
