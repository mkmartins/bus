class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_dishes, class_name: OrderDish, foreign_key: :order_id, primary_key: :id
  attr_accessible :status, :user_id
end
