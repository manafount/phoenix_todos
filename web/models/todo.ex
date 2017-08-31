defmodule PhoenixTodos.Todo do
  use PhoenixTodos.Web, :model

  schema "todos" do
    field :description, :string
    field :complete, :boolean
    
    timestamps()
  end

  @required_fields ~w(description complete)
  
  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
