defmodule DoAppPlatformUptime.DbConn do
  def available? do
    try do
      result = Ecto.Adapters.SQL.query(DoAppPlatformUptime.Repo, "SELECT 1")

      case result do
        {:ok, _result} -> :up
        _ -> :down
      end
    rescue
      _e in DBConnection.ConnectionError -> :down
    end
  end
end
