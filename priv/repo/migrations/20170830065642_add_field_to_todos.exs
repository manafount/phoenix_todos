defmodule PhoenixTodos.Repo.Migrations.AddFieldToTodos do
  use Ecto.Migration

  def change do
    alter table(:todos) do
      add :complete, :boolean
    end
  end
end
