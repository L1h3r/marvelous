defmodule Marvelous.Mixfile do
  use Mix.Project

  def project do
    [
      app: :marvelous,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [
      mod: {Marvelous, []},
      applications: [
        :logger,
        :cowboy,
        :plug
      ]
    ]
  end

  defp deps do
    [
      {:cowboy, "~> 1.1.2"},
      {:plug, "~> 1.3.3"},
      {:credo, "~> 0.6.1", only: [:dev, :test]},
      {:dialyxir, "~> 0.5.0", only: :dev, runtime: false}
    ]
  end

  defp aliases do
    [
      test: ["credo", "test"]
    ]
  end
end
