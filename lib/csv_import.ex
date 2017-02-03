defmodule CsvImport do
  def import(%{ csv_file: file }) do
    File.stream!(file.path)
      |> CSV.decode(separator: ?,, headers: true)
      |> Stream.map(fn data ->
           Task.async(fn ->
             CsvImport.Contact.create(data)
           end)
         end)
      |> Enum.map(&Task.start/1)
  end
end