class Restaurant < ActiveRecord::Base
  belongs_to :cuisine, dependent: :destroy
  attr_accessible :cuisine_id, :name, :cuisine, :cuisine_attributes
  accepts_nested_attributes_for :cuisine, reject_if: :all_blank
end
