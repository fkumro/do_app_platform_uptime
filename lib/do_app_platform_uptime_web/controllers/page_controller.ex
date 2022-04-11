defmodule DoAppPlatformUptimeWeb.PageController do
  use DoAppPlatformUptimeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
