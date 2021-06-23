# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :idea_snippets,
  ecto_repos: [IdeaSnippets.Repo]

# Configures the endpoint
config :idea_snippets, IdeaSnippetsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8ZO8TlJBZNcfUBqur4fk9tEbEppyzn0C/d3vLnWj0t0vFpMMw46yLPCdl/q7uzYR",
  render_errors: [view: IdeaSnippetsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: IdeaSnippets.PubSub,
  live_view: [signing_salt: "12cH7wZJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
