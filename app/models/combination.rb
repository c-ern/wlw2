class Combination < ActiveRecord::Base
  attr_accessible :car_body_style_id, :product_id

  belongs_to :product
  belongs_to :car_body_style
end
