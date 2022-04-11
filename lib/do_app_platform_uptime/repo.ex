defmodule DoAppPlatformUptime.Repo do
  use Ecto.Repo,
    otp_app: :do_app_platform_uptime,
    adapter: Ecto.Adapters.Postgres
end
