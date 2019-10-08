defmodule GallowsWeb.PageController do
  use GallowsWeb, :controller

  def index(conn, _params) do
    assigns = %{produce: "pear", count: 3}
    render(conn, "index.html", assigns)
  end
end
