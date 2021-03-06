defmodule Marvelous.Routes.HelloRoute do
  import Plug.Conn

  def init(params), do: params

  def call(conn, _params) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello world")
  end

end
