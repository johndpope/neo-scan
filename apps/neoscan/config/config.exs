# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :neoscan,
  ecto_repos: [Neoscan.Repo]

# Configures the endpoint
config :neoscan, Neoscan.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J8EWtXVVWp+AmNn4fmdodz17pug1X8v8QbjiPnNf0IkeFYhY140Dhei7UGUACHXs",
  render_errors: [view: Neoscan.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Neoscan.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
import_config "scout_apm.exs"
