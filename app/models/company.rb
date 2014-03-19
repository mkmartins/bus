class Company < ActiveRecord::Base
  has_many :users
  attr_accessible :message, :name, :users_attributes

  accepts_nested_attributes_for :users, reject_if: :all_blank, allow_destroy: true
end
