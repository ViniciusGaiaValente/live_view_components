defmodule LiveViewComponentsWeb.PageLive do
  use LiveViewComponentsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, query: "", results: %{})}
  end
end
