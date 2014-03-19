class Company < ActiveRecord::Base
  has_many :users
  attr_accessible :message, :name, :adress_line_1, :adress_line_2, :city , :state, :zip, :users_attributes

  accepts_nested_attributes_for :users, reject_if: :all_blank, allow_destroy: true
end


