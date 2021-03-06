defmodule TwatterWeb.Router do
  use TwatterWeb, :router

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

  scope "/", TwatterWeb do
    pipe_through :browser # Use the default browser stack

    get "/", HomeController, :index

    resources "/tweets", TweetController
  end

  # Other scopes may use custom stacks.
  # scope "/api", TwatterWeb do
  #   pipe_through :api
  # end
end
