defmodule Marvelous.Routes do
  use Plug.Router

  if Mix.env == :dev do
    use Plug.Debugger, otp_app: :marvelous
    use Plug.ErrorHandler
  end

  plug Plug.RequestId
  plug Plug.Logger, log: :debug
  plug Plug.Parsers, parsers: [:urlencoded, :multipart, :json]

  plug Plug.Static,
    at: "/assets",
    from: "lib/web/assets"

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
