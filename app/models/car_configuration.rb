class CarConfiguration < ActiveRecord::Base
  attr_accessible :car_body_style_id, :car_type_id

  belongs_to :car_type
  belongs_to :car_body_style

  has_many :assemblies
  has_many :facilities, :through => :assemblies

  def setup_car(ct, cbs)
  	find_or_create_by_car_type_id_and_car_body_style_id(ct, cbs)
  end
end
