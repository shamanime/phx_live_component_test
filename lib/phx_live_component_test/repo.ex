defmodule PhxLiveComponentTest.Repo do
  use Ecto.Repo,
    otp_app: :phx_live_component_test,
    adapter: Ecto.Adapters.Postgres
end
