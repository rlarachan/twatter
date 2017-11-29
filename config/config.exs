# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :twatter,
  ecto_repos: [Twatter.Repo]

# Configures the endpoint
config :twatter, TwatterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hnsUL8jG5NCnL6q5zd55AcG189rhIJwVaK7CkA+KGsoOR1NiHDeDGdcpa9eKuk5/",
  render_errors: [view: TwatterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Twatter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Template Engines
config :phoenix, :template_engines,
  pug: PhoenixExpug.Engine

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
