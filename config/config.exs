# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cdp_pro_alerts,
  ecto_repos: [CdpProAlerts.Repo]

# Configures the endpoint
config :cdp_pro_alerts, CdpProAlertsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SqbluEWkjvgIGexlXmJ4akTOqS0c4CmA8+zXUL5Uajo7gvdutwAczBOlDEdhMbmG",
  render_errors: [view: CdpProAlertsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CdpProAlerts.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"