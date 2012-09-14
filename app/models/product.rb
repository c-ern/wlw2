class Product < ActiveRecord::Base
  attr_accessible :car_body_style, :name, :prod_type, :wikipedia_url, :facility_ids

  has_many :manufactures, :dependent => :destroy
  has_many :facilities, :through => :manufactures  
end
