defmodule SkillshapedWeb.PageController do
  use SkillshapedWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
