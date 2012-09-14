class Manufacture < ActiveRecord::Base
  attr_accessible :facility_id, :product_id

  belongs_to :facility
  belongs_to :product
end
