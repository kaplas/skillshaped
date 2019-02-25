defmodule Skillshaped.Repo do
  use Ecto.Repo,
    otp_app: :skillshaped,
    adapter: Ecto.Adapters.Postgres
end
