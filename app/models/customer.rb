class Customer < ApplicationRecord
  has_many :addresses, as: :addressable, dependent: :destroy
  has_many :orders, dependent: :destroy

  def foods_price_sum
    orders.joins(:order_foods).sum('order_foods.price')
  end
end
