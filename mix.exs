defmodule CloudIServiceHttpRest do
  use Mix.Project

  def project do
    [app: :cloudi_service_http_rest,
     version: "1.7.3",
     language: :erlang,
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [{:cloudi_core, "~> 1.7.3"},
     {:trie, "~> 1.7.3"}]
  end

  defp description do
    "REST HTTP CloudI Service"
  end

  defp package do
    [files: ~w(src include doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_rest"}]
   end
end
