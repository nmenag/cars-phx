defmodule Cars.Repo.Migrations.CreateBrands do
  use Ecto.Migration

  def change do
    create table(:brands) do
      add :description, :string

      timestamps()
    end

    create unique_index(:brands, [:description])
  end
end
