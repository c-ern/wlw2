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
    @facility = Facility.new(params[:facility])

    respond_to do |format|
      if @facility.save
        format.html { redirect_to @facility, notice: 'Facility was successfully created.' }
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
