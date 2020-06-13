# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_live_component_test,
  ecto_repos: [PhxLiveComponentTest.Repo]

# Configures the endpoint
config :phx_live_component_test, PhxLiveComponentTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UuUZNG1g5A25yn+kWInMm91KYkQWq9VdsgsneaYw5IMvAlNx3yjjsLtcxqLTsPlo",
  render_errors: [view: PhxLiveComponentTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxLiveComponentTest.PubSub,
  live_view: [signing_salt: "N7Al8tHT"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
