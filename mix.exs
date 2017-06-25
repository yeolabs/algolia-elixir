defmodule Algolia.Mixfile do
  use Mix.Project

  def project do
    [app: :algolia,
     version: "0.6.0",
     description: "Elixir implementation of Algolia Search API",
     elixir: "~> 1.2",
     package: package(),
     deps: deps()]
  end

  def package do
    [
      maintainers: ["Sikan He"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/sikanhe/algolia-elixir"}
    ]
  end

  def application do
    [applications: [:logger, :hackney]]
  end

  defp deps do
    [{:hackney, "~> 1.6.5 or ~> 1.8"},
     {:poison, "~> 2.0 or ~> 3.0"},

     # Docs
     {:ex_doc, "~> 0.10", only: :dev},
     {:earmark, "~> 0.1", only: :dev},
     {:inch_ex, ">= 0.0.0", only: :dev}]
  end
end
