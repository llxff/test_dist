# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :test_dist,
  ecto_repos: [TestDist.Repo]

# Configures the endpoint
config :test_dist, TestDistWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "w2iBEv3vqywgR3o14+32nQGVF7VwwK4cHnCKcokXw4e8W8jxwKPvPDViWcfFZ7tg",
  render_errors: [view: TestDistWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TestDist.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
