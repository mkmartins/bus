class Restaurant < ActiveRecord::Base
  belongs_to :cuisine
  has_many :dishes
  has_many :ingredients, through: :dishes
  has_many :side_dishes, through: :dishes

  accepts_nested_attributes_for :cuisine, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :dishes, reject_if: :all_blank, allow_destroy: true

  attr_accessible :cuisine_id, :name, :cuisine,  :cuisine_attributes, :dishes_attributes

  amoeba do
    enable
    include_field :dishes
  end    

  #   Restaurant.dup :include => :name
  # end

end
