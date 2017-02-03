defmodule CsvImport.Contact do
  alias CsvUpload.Contact, as: Contact
  alias CsvUpload.Repo, as: Repo

  def create(data) do
    changeset = Contact.changeset(%Contact{}, _format(data))
    {status, changeset} = Repo.insert(changeset)
  end

  defp _format(data) do
    %{
      title: data["title"],
      first_name: data["firstname"],
      last_name: data["lastname"],
      middle_name: data["middlename"],
      suffix: data["suffix"],
      address: _extract_address(data),
      company: data["company"],
      primary_phone: data["daytime_phone"],
      mobile_phone: data["mobile_phone"],
      email: data["email"]
    }
  end

  defp _extract_address(data) do
    Enum.join([
      data["address1"],
      data["address2"],
      data["city"],
      data["state"],
      data["country"],
      data["zipcode"]
    ], " ")
  end
end