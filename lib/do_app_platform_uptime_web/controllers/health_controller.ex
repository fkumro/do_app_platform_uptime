defmodule DoAppPlatformUptimeWeb.HealthController do
  use DoAppPlatformUptimeWeb, :controller

  alias DoAppPlatformUptime.DbConn

  def index(conn, _params) do
    case DbConn.available?() do
      :up ->
        conn
        |> put_resp_content_type("text/plain")
        |> send_resp(200, ":ok")

      :down ->
        conn
        |> put_resp_content_type("text/plain")
        |> send_resp(500, ":down")
    end
  end
end
