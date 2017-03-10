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
    [
      applications: [
        :logger
      ]
    ]
  end

  defp deps do
    [
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
