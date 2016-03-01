class InvoicesController < ApplicationController

  # GET /invoices
  # GET /invoices.json
  def index
    @customer = Customer.find(params[:customer_id])
    @invoices = @customer.invoices.paginate(:page => params[:page], :per_page => 3)
  end
end
