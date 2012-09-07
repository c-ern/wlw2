# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Company.create("image_url"=>"bmw.png", "name"=>"BMW", "wikipedia_url"=>"http://de.wikipedia.org/wiki/BMW")
Company.create("image_url"=>"audi.png", "name"=>"Audi", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Audi")
Company.create("image_url"=>"mercedes.png", "name"=>"Mercedes", "wikipedia_url"=>"http://de.wikipedia.org/wiki/Mercedes-Benz_Cars")

Facility.create("address"=>"Dostlerstr. 1, 80809 Munich", "latitude"=>48.17717, "longitude"=>11.56332, "name"=>"Werk 1.1")
Facility.create("address"=>"Landshuter Strasse 56,  84130 Dingolfing", "latitude"=>48.64932, "longitude"=>12.47142, "name"=>"Werk 2")
Facility.create("address"=>"Ettinger Straße, 85057 Ingolstadt", "latitude"=>48.77802000000001, "longitude"=>11.41544, "name"=>"Werk 1")
Facility.create("address"=>"Ohmstraße 2,  84030 Landshut", "latitude"=>48.55893, "longitude"=>12.14871, "name"=>"Werk 4.1")
Facility.create("address"=>"Mercedesstraße 137, 70327 Stuttgart", "latitude"=>48.7854787, "longitude"=>9.2411403, "name"=>"Werk Untertürkheim")
Facility.create("address"=>"Bela-Barenyi-Straße, 71063 Sindelfingen", "latitude"=>48.70426, "longitude"=>8.99339, "name"=>"Werk Sindelfingen")
Facility.create("address"=>"Mercedesstraße 1, 28309 Bremen", "latitude"=>53.05401, "longitude"=>8.9062, "name"=>"Werk Bremen")

Affiliation.create("company_id"=>1, "facility_id"=>1)
Affiliation.create("company_id"=>1, "facility_id"=>2)
Affiliation.create("company_id"=>2, "facility_id"=>4)
Affiliation.create("company_id"=>1, "facility_id"=>7)
Affiliation.create("company_id"=>3, "facility_id"=>8)
Affiliation.create("company_id"=>3, "facility_id"=>9)
Affiliation.create("company_id"=>3, "facility_id"=>10)
