defmodule CsvUpload.ContactTest do
  use CsvUpload.ModelCase

  alias CsvUpload.Contact

  @valid_attrs %{address: "some content", company: "some content", email: "some content", first_name: "some content", last_name: "some content", middle_name: "some content", mobile_phone: "some content", primary_phone: "some content", suffix: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Contacts.changeset(%Contacts{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Contacts.changeset(%Contacts{}, @invalid_attrs)
    refute changeset.valid?
  end
end
