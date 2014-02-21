class Restaurant < ActiveRecord::Base
  belongs_to :cuisine
  has_many :menu

  attr_accessible :cuisine_id, :name, :cuisine,  :cuisine_attributes, :menu_attributes

  accepts_nested_attributes_for :cuisine, reject_if: :all_blank
  accepts_nested_attributes_for :menu, reject_if: :all_blank
end
