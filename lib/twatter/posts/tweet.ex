defmodule Twatter.Posts.Tweet do
  use Ecto.Schema
  import Ecto.Changeset
  alias Twatter.Posts.Tweet


  schema "tweets" do
    field :status, :string

    timestamps()
  end

  @doc false
  def changeset(%Tweet{} = tweet, attrs) do
    tweet
    |> cast(attrs, [:status])
    |> validate_required([:status])
  end
end
