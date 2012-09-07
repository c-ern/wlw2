class Facility < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name, :companies_attributes
  geocoded_by :address # hier sage ich, dass der geocode auf der Adresse basiert
  after_validation :geocode, :if => :address_changed?

  has_many :affiliations
  has_many :companies, :through => :affiliations
  accepts_nested_attributes_for :companies
end
