namespace :export do
  desc "Prints Companies.all in a seeds.rb way."
  task :seeds_format => :environment do
    puts "# ruby encoding: utf-8"
    Company.order(:id).all.each do |company|
      werk = String.new
      for facility in company.facilities
	  	werk << "{" + facility.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'') + "}"
	  	werk.gsub!(/}{/, '},{') 
	  end
	

      puts "Company.create(#{company.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')}).facilities.create([#{werk})]"
      
    end
  end
end