class SideDish < ActiveRecord::Base
  belongs_to :dish
  has_many :side_ingredients, class_name: Ingredient
  attr_accessible :name, :standard, :price, :side_ingredients_attributes

  accepts_nested_attributes_for :side_ingredients, reject_if: :all_blank

  # amoeba do
  #   enable
  #   include_field :side_ingredients
  # end

end
