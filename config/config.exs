# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :affiliate,
  ecto_repos: [Affiliate.Repo]

# Configures the endpoint
config :affiliate, Affiliate.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fX+x0D2xPUW3XQ8NgiBxZJ5i80Q87HxRFzWKviYYY/+R5k5Ef+Jf3jPIh6hGoJcQ",
  render_errors: [view: Affiliate.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Affiliate.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Affiliate.User,
  repo: Affiliate.Repo,
  module: Affiliate,
  router: Affiliate.Router,
  messages_backend: Affiliate.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :invitable, :registerable]

config :coherence, Affiliate.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
