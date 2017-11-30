defmodule Twatter.Repo.Migrations.CreateTweets do
  use Ecto.Migration

  def change do
    create table(:tweets) do
      add :status, :text

      timestamps()
    end

  end
end
