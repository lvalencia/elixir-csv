defmodule CsvUpload.PageController do
  use CsvUpload.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
