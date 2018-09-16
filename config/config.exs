# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :web_demo,
  ecto_repos: [WebDemo.Repo]

# Configures the endpoint
config :web_demo, WebDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ODLLKsCbnFiOyNUl6wMjiW/OApRFoz8P0mo47X9YRsVkHck0Bc9JSgrpPM16wvqE",
  render_errors: [view: WebDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WebDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
