defmodule LiveViewComponentsWeb.LightLive do
  use LiveViewComponentsWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, :brightness, 10)
    { :ok, socket }
  end

  def handle_event("on", _, socket) do
    socket = assign(socket, :brightness, 100)
    { :noreply, socket }
  end

  def handle_event("off", _, socket) do
    socket = assign(socket, :brightness, 0)
    { :noreply, socket }
  end

  def handle_event("down", _, socket) do
    socket = update(socket, :brightness, &max(&1 - 10, 0))
    { :noreply, socket }
  end

  def handle_event("up", _, socket) do
    socket = update(socket, :brightness, &min(&1 + 10, 100))
    { :noreply, socket }
  end
end
