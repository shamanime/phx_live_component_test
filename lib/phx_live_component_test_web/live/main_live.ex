defmodule PhxLiveComponentTestWeb.MainLive do
  use PhxLiveComponentTestWeb, :live_view

  @impl true
  @spec mount(any, any, Phoenix.LiveView.Socket.t()) :: {:ok, any}
  def mount(_params, _session, socket) do
    {:ok, assign(socket, component_visible: false)}
  end

  @impl true
  def handle_event("display_component", _params, socket) do
    {:noreply, assign(socket, component_visible: true)}
  end
end
