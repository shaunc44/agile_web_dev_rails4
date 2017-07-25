class LineItem < ActiveRecord::Base
  # why is 'belongs_to :order' erasing the cart?????????????????
  belongs_to :order, optional: true
  belongs_to :product
  belongs_to :cart

  validates :product_id, presence: true
  validates :cart_id, presence: true, on: :create

  def total_price
    product.price * quantity
  end
end
