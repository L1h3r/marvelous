defmodule Marvelous.Routes.IndexRoute do

  import Plug.Conn

  def init(params), do: params

  def call(conn, _params) do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, EEx.eval_file("lib/web/templates/index.eex"))
  end

end
