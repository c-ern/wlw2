class CarConfiguration < ActiveRecord::Base
  attr_accessible :car_body_style_id, :car_type_id

  belongs_to :car_type
  belongs_to :car_body_style
end
