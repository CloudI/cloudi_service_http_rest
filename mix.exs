defmodule CloudIServiceHttpRest do
  use Mix.Project

  def project do
    [app: :cloudi_service_http_rest,
     version: "2.0.7",
     language: :erlang,
     erlc_options: [
       :deterministic,
       :debug_info,
       :warn_export_vars,
       :warn_unused_import,
       #:warn_missing_spec,
       :warnings_as_errors],
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [{:cloudi_core, ">= 2.0.7"},
     {:trie, ">= 2.0.7"}]
  end

  defp description do
    "REST HTTP CloudI Service"
  end

  defp package do
    [files: ~w(src include doc rebar.config README.markdown LICENSE),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"Website" => "https://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_rest"}]
   end
end
