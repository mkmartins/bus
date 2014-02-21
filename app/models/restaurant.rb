class Restaurant < ActiveRecord::Base
  belongs_to :cuisine, dependent: :destroy
  attr_accessible :cuisine_id, :name, :cuisine
end
