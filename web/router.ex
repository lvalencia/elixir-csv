defmodule CsvUpload.Router do
  use CsvUpload.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CsvUpload do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    post "/csv", CsvController, :upload
  end

  # Other scopes may use custom stacks.
  # scope "/api", CsvUpload do
  #   pipe_through :api
  # end
end
