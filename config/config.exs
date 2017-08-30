# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_todos,
  ecto_repos: [PhoenixTodos.Repo]

# Configures the endpoint
config :phoenix_todos, PhoenixTodos.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eA/KGUUXneVQ+8ezQqBwrluSX4FzsLlbvb3NZcczaEEKnFc1OtqPGfR0JH7D1yCw",
  render_errors: [view: PhoenixTodos.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixTodos.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
