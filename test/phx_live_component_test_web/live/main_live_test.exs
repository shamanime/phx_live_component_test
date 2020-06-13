defmodule PhxLiveComponentTestWeb.PageLiveTest do
  use PhxLiveComponentTestWeb.ConnCase

  import Phoenix.LiveViewTest

  test "interacting with the component", %{conn: conn} do
    {:ok, view, _html} = live(conn, "/liveview")

    # assert we have the main LV displayed
    assert view |> element("p", "This is within the Main liveview.") |> has_element?

    # click a button in your LV that will display the component
    view |> element("button[phx-click='display_component']") |> render_click()

    # make sure your **component** is displayed after the click
    assert view |> element("p", "This is within the Component.") |> has_element?

    # assert the conditional text based in the component state
    refute view |> element("p", "Component event was triggered.") |> has_element?
    assert view |> element("p", "Component event was not triggered.") |> has_element?

    # click a button in the component that will update the HTML
    view |> element("button[phx-click='component_event']") |> render_click()

    # assert the component HTML was updated
    assert view |> element("p", "Component event was triggered.") |> has_element?
    refute view |> element("p", "Component event was not triggered.") |> has_element?
  end
end
