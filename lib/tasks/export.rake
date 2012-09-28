namespace :export do
  desc "Prints Companies.all in a seeds.rb way."
  task :seeds_format => :environment do
    puts "# ruby encoding: utf-8"
    CarType.order(:id).all.each do |cartype|
      puts "CarType.create(#{cartype.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end

    CarBodyStyle.order(:id).all.each do |carstyle|
      puts "CarBodyStyle.create(#{carstyle.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end    

    Company.order(:id).all.each do |company|
      werk = String.new
      assem = String.new
      for facility in company.facilities
	  	  werk << "{" + facility.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'') + "}"
        werk.gsub!(/}{/, '},{')
        for cc in facility.car_configurations
          ctype = cc.car_type
          cstyle = cc.car_body_style
          puts "confi = CarConfiguration.find_or_create_by_car_type_id_and_car_body_style_id(\"#{ctype.id}\", \"#{cstyle.id}\")"
          puts "Assembly.create(facility_id: #{facility.id}, car_configuration_id: confi.id)"
        end

	    end

      puts "Company.create(#{company.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')}).facilities.create([#{werk}])"
      
    end
  

  end
end
