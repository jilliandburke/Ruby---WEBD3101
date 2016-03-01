json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :InvoiceId, :CustomerId, :InvoiceDate, :BillingAddress, :BillingCity, :BillingState, :BillingCountry, :BillingPostalCode, :Total
  json.url invoice_url(invoice, format: :json)
end
