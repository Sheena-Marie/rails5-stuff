class PaymentsController < ApplicationController

  def new
    if params[:order_id]
      @order = Order.find(params[:order_id])
    end
  end

  def create
  end
end
