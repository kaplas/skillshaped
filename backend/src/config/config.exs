# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :skillshaped,
  ecto_repos: [Skillshaped.Repo]

# Configures the endpoint
config :skillshaped, SkillshapedWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9AkGL3E5Dz2sqPY+1cdYTnQY2KoZGp97BSDl361WIHlWY9tm21tJSjGuHLPzIg1B",
  render_errors: [view: SkillshapedWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Skillshaped.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
