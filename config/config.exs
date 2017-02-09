# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :csv_upload,
  ecto_repos: [CsvUpload.Repo]

# Configures the endpoint
config :csv_upload, CsvUpload.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lj3GoYQFQdaJr15U4Rdc9Lt5BAkaVy3Z9mQes0qIh7d7y/M7fIGflzbIAryOishx",
  render_errors: [view: CsvUpload.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CsvUpload.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Don't warn about the following missing dependencies
config :distillery, no_warn_missing: [:edib, :distillery]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
