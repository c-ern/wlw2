namespace :export do
  desc "Prints Companies.all in a seeds.rb way."
  task :seeds_format => :environment do
    Company.order(:id).all.each do |company|
      puts "Company.create(#{company.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
	
	puts ""

	Facility.order(:id).all.each do |facility|
      puts "Facility.create(#{facility.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end  
 	
 	puts ""

	Affiliation.order(:id).all.each do |affiliation|
      puts "Affiliation.create(#{affiliation.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end  

  end
end