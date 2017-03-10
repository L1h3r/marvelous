defmodule Marvelous.Routes do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    Marvelous.Routes.IndexRoute.call(conn, nil)
  end

  get "/hello" do
    Marvelous.Routes.HelloRoute.call(conn, nil)
  end

  match _ do
    send_resp(conn, 404, "Sorry")
  end
end
