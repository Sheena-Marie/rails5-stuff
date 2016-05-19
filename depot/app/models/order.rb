class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy

  PAYMENT_TYPES = [ "Cheque", "Credit Card", "Purchase Order", "Paypal"]

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      self.line_items << item
    end
  end



end
