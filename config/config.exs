# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :cdp_pro,
  ecto_repos: [CdpPro.Repo],
  generators: [binary_id: true],
  title: "CDP PRO Alerts",
  logo_url: System.get_env("LOGO_URL") || "https://s3.amazonaws.com/cdp-pro/cdp-pro-logo.png",
  subscriptions_email: System.get_env("SUBSCRIPTION_EMAIL") || "cdp-pro-alerts@mainframeos.com",
  polling_interval: (System.get_env("POLLING_INTERVAL") || "15") |> String.to_integer()

# Configures the endpoint
config :cdp_pro, CdpProWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base:
    System.get_env("SECRET_KEY_BASE") ||
      "4inyd47D1m4yXPd2RwgzexDCfkbKM2C5ciuSNRk/t5pBNwRVZEUUC1gm9vP2vLXr",
  render_errors: [view: CdpProWeb.ErrorView, accepts: ~w(json html)],
  pubsub: [name: CdpPro.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Configures ExW3 library
config :ethereumex,
  client_type: :http,
  tub_contract_address:
    System.get_env("TUB_CONTRACT_ADDRESS") || "0x448a5065aebb8e423f0896e6c5d525c040f59af3",
  url: "https://mainnet.infura.io/v3/" <> System.get_env("INFURA_KEY")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
