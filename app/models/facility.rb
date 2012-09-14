class Facility < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name, :companies_attributes, :affiliations_attributes, :wikipedia_url, :company_ids
  
  # die folgenden beiden Zeilen müssen für das Betanken der Datenbank mit seeds.rb auskommentiert werden
  geocoded_by :address # hier sage ich, dass der geocode auf der Adresse basiert
  after_validation :geocode, :if => :address_changed?

  has_many :affiliations, :dependent => :destroy
  has_many :companies, :through => :affiliations

  has_many :manufactures
  has_many :products, :through => :manufactures
  
  accepts_nested_attributes_for :companies, :affiliations, :allow_destroy => true

  acts_as_gmappable :process_geocoding => false
    def gmaps4rails_address
      self.address
    end

end
