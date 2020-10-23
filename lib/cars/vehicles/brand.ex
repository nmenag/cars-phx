defmodule Cars.Vehicles.Brand do
  use Ecto.Schema
  import Ecto.Changeset

  schema "brands" do
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(brand, attrs) do
    brand
    |> cast(attrs, [:description])
    |> validate_required([:description])
    |> unique_constraint(:description)
  end
end
