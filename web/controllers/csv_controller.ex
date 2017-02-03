defmodule CsvUpload.CsvController do
  use CsvUpload.Web, :controller

  def upload(conn, %{ "csv_upload" => upload_params }) do
    csv = upload_params["csv"]
    CsvImport.import(%{ csv_file: csv })
    conn
      |> put_flash(:info, 'successfully uploaded csv')
      |> redirect(to: page_path(conn, :index))
  end
end