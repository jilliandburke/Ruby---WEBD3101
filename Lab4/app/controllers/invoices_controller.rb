class InvoicesController < ApplicationController

  # GET /invoices
  # GET /invoices.json
  def index
    @customer = Customer.find(params[:customer_id])
    @invoices = @customer.invoices
  end
end
