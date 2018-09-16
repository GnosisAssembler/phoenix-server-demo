defmodule WebDemoWeb.PageController do
  use WebDemoWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
