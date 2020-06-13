defmodule PhxLiveComponentTestWeb.ChildComponent do
  use PhxLiveComponentTestWeb, :live_component

  @impl true
  def update(assigns, socket) do
    socket =
      socket
      |> assign(assigns)
      |> assign(:component_event_triggered, false)

    {:ok, socket}
  end

  @impl true
  def handle_event("component_event", _params, socket) do
    {:noreply, assign(socket, component_event_triggered: true)}
  end
end
