class FacilitiesController < ApplicationController
  # GET /facilities
  # GET /facilities.json
  def index
    @facilities = Facility.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @facilities }
    end
  end

  # GET /facilities/1
  # GET /facilities/1.json
  def show
    @facility = Facility.find(params[:id])
    @json = Facility.all.to_gmaps4rails do |facility, marker|
      marker.infowindow render_to_string(:partial => "gmaps_infowindow", :locals => { :object => facility})

      #{}"<p>#{facility.companies.first.name}</p>"
      
      marker.picture({
        :picture => "/assets/#{facility.companies.first.image_url}",
        :width =>  30,        
        :height => 30
      })

      marker.title "#{facility.companies.first.name}, #{facility.name}"
    end
    @gmapsoptions = {
         "map_options" => {center_latitude: @facility.latitude, 
                           center_longitude: @facility.longitude,
                           detect_location: false,
                           center_on_user: false,
                           auto_adjust: false,
                           auto_zoom: true,
                           zoom: 9,
                           provider: "google"},
         "markers" => { "data" => @json, "auto-adjust" => false }
         }

    # @markers = Facility.first.to_gmaps4rails
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @facility }
    end
  end

  # GET /facilities/new
  # GET /facilities/new.json
  def new
    @facility = Facility.new
    @facility.affiliations.build # damit die Felder angelegt werden

    @car_configurations = CarConfiguration.all
    @car_types = CarType.all
    @car_body_styles = CarBodyStyle.all


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @facility }
    end
  end

  # GET /facilities/1/edit
  def edit
    @facility = Facility.find(params[:id])
    @affiliation = Affiliation.all
  end

  # POST /facilities
  # POST /facilities.json
  def create
    @facility = Facility.create(params[:facility])

    @assembly_ct = params[:assembly1][:car_type_ids]
    # @assembly_cbs = Array.new
    @assembly_cbs = params[:assembly2][:car_body_style_ids]
    # @confu = Array.new
    # cc = @facility.car_configurations.new
    # @carconf = @facility.car_configurations.new

    @assembly_cbs.each do |cbs|
      # confi=@facility.car_configurations.find_or_create_by_car_type_id_and_car_body_style_id(@assembly_ct, cbs)
      
      if cbs == "" # weil aus dem select auch leere eintraege rausfallen
      else
        cconf = CarConfiguration.where(:car_type_id => @assembly_ct, :car_body_style_id => cbs).first_or_create  
        # @confi=@facility.car_configurations.find_by_id(cconf.id)
        confi = @facility.assemblies.create(:car_configuration_id => cconf.id)
        @cconfaussen = cconf
      end

      # confi.save
      # @facility.car_configuration.setup_car(assembly_ct, cbs)        
      # confi = CarConfiguration.find_or_create_by_car_type_id_and_car_body_style_id(assembly_ct, cbs)
      # @confu = confi.id
      # @assembly.car_configuration_id = confi.id
      # @assi = Assembly.find_or_create_by_facility_id_and_car_configuration_id(@facid, confi.id)
    end
    peter = String.new
    peter << params.to_s
    peter << "<br />"
    peter << @assembly_ct
    peter << "<br />"
    peter << @assembly_cbs[1]
    peter << "<br />"
    peter << @confi.to_s
    peter << "<br />"
    peter << @cconfaussen.to_s
    
    # @facility.company_ids = params[:facility].values[0]
    # render text: assembly_ct

    respond_to do |format|
      if @facility.save
        format.html { 
          # redirect_to @facility, notice: 'Facility was successfully created.'
          render text: peter
         }
        format.json { render json: @facility, status: :created, location: @facility }
      else
        format.html { render action: "new" }
        format.json { render json: @facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /facilities/1
  # PUT /facilities/1.json
  def update
    @facility = Facility.find(params[:id])


    respond_to do |format|
      if @facility.update_attributes(params[:facility])
        format.html { redirect_to @facility, notice: 'Facility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facilities/1
  # DELETE /facilities/1.json
  def destroy
    @facility = Facility.find(params[:id])
    @facility.destroy

    respond_to do |format|
      format.html { redirect_to facilities_url }
      format.json { head :no_content }
    end
  end
  

end
