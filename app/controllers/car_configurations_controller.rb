class CarConfigurationsController < ApplicationController
  # GET /car_configurations
  # GET /car_configurations.json
  def index
    @car_configurations = CarConfiguration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_configurations }
    end
  end

  # GET /car_configurations/1
  # GET /car_configurations/1.json
  def show
    @car_configuration = CarConfiguration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_configuration }
    end
  end

  # GET /car_configurations/new
  # GET /car_configurations/new.json
  def new
    @car_configuration = CarConfiguration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_configuration }
    end
  end

  # GET /car_configurations/1/edit
  def edit
    @car_configuration = CarConfiguration.find(params[:id])
  end

  # POST /car_configurations
  # POST /car_configurations.json
  def create
    @car_configuration = CarConfiguration.new(params[:car_configuration])

    respond_to do |format|
      if @car_configuration.save
        format.html { redirect_to @car_configuration, notice: 'Car configuration was successfully created.' }
        format.json { render json: @car_configuration, status: :created, location: @car_configuration }
      else
        format.html { render action: "new" }
        format.json { render json: @car_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_configurations/1
  # PUT /car_configurations/1.json
  def update
    @car_configuration = CarConfiguration.find(params[:id])

    respond_to do |format|
      if @car_configuration.update_attributes(params[:car_configuration])
        format.html { redirect_to @car_configuration, notice: 'Car configuration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_configurations/1
  # DELETE /car_configurations/1.json
  def destroy
    @car_configuration = CarConfiguration.find(params[:id])
    @car_configuration.destroy

    respond_to do |format|
      format.html { redirect_to car_configurations_url }
      format.json { head :no_content }
    end
  end
end
