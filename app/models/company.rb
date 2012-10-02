class Company < ActiveRecord::Base
  attr_accessible :image_url, :name, :wikipedia_url, :facilities_attributes

  has_many :affiliations
  has_many :facilities, :through => :affiliations

  has_many :car_types
  before_destroy {|company| company.facilities.destroy_all }
  accepts_nested_attributes_for :facilities, :reject_if => lambda { |a| a[:name].blank? }
end
