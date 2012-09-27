class CarBodyStylesController < ApplicationController
  # GET /car_body_styles
  # GET /car_body_styles.json
  def index
    @car_body_styles = CarBodyStyle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_body_styles }
    end
  end

  # GET /car_body_styles/1
  # GET /car_body_styles/1.json
  def show
    @car_body_style = CarBodyStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_body_style }
    end
  end

  # GET /car_body_styles/new
  # GET /car_body_styles/new.json
  def new
    @car_body_style = CarBodyStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_body_style }
    end
  end

  # GET /car_body_styles/1/edit
  def edit
    @car_body_style = CarBodyStyle.find(params[:id])
  end

  # POST /car_body_styles
  # POST /car_body_styles.json
  def create
    @car_body_style = CarBodyStyle.new(params[:car_body_style])

    respond_to do |format|
      if @car_body_style.save
        format.html { redirect_to @car_body_style, notice: 'Car body style was successfully created.' }
        format.json { render json: @car_body_style, status: :created, location: @car_body_style }
      else
        format.html { render action: "new" }
        format.json { render json: @car_body_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_body_styles/1
  # PUT /car_body_styles/1.json
  def update
    @car_body_style = CarBodyStyle.find(params[:id])

    respond_to do |format|
      if @car_body_style.update_attributes(params[:car_body_style])
        format.html { redirect_to @car_body_style, notice: 'Car body style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_body_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_body_styles/1
  # DELETE /car_body_styles/1.json
  def destroy
    @car_body_style = CarBodyStyle.find(params[:id])
    @car_body_style.destroy

    respond_to do |format|
      format.html { redirect_to car_body_styles_url }
      format.json { head :no_content }
    end
  end
end
