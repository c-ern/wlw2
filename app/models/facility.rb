class Facility < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name, :companies_attributes

  has_many :affiliations
  has_many :companies, :through => :affiliations
  accepts_nested_attributes_for :companies
end
