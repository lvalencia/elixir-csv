defmodule CsvUpload.Contact do
  use CsvUpload.Web, :model

  schema "contacts" do
    field :title, :string
    field :first_name, :string
    field :last_name, :string
    field :middle_name, :string
    field :suffix, :string
    field :company, :string
    field :address, :string
    field :primary_phone, :string
    field :mobile_phone, :string
    field :email, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :first_name, :last_name, :middle_name, :suffix, :company, :address, :primary_phone, :mobile_phone, :email])
    |> validate_required([:first_name, :last_name, :address])
  end
end
