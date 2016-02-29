json.array!(@customers) do |customer|
  json.extract! customer, :id, :FirstName, :LastName, :Company, :Address, :City, :State, :Country, :PostalCode, :Phone, :Fax, :Email, :SupportRepId
  json.url customer_url(customer, format: :json)
end
