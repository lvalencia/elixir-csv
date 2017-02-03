defmodule CsvUpload.Repo.Migrations.CreateContacts do
  use Ecto.Migration

  def change do
    create table(:contacts) do
      add :title, :string
      add :first_name, :string
      add :last_name, :string
      add :middle_name, :string
      add :suffix, :string
      add :company, :string
      add :address, :string
      add :primary_phone, :string
      add :mobile_phone, :string
      add :email, :string

      timestamps()
    end

  end
end
