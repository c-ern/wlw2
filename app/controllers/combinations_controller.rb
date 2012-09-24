class CombinationsController < ApplicationController
  # GET /combinations
  # GET /combinations.json
  def index
    @combinations = Combination.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @combinations }
    end
  end

  # GET /combinations/1
  # GET /combinations/1.json
  def show
    @combination = Combination.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @combination }
    end
  end

  # GET /combinations/new
  # GET /combinations/new.json
  def new
    @combination = Combination.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @combination }
    end
  end

  # GET /combinations/1/edit
  def edit
    @combination = Combination.find(params[:id])
  end

  # POST /combinations
  # POST /combinations.json
  def create
    @combination = Combination.new(params[:combination])

    respond_to do |format|
      if @combination.save
        format.html { redirect_to @combination, notice: 'Combination was successfully created.' }
        format.json { render json: @combination, status: :created, location: @combination }
      else
        format.html { render action: "new" }
        format.json { render json: @combination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /combinations/1
  # PUT /combinations/1.json
  def update
    @combination = Combination.find(params[:id])

    respond_to do |format|
      if @combination.update_attributes(params[:combination])
        format.html { redirect_to @combination, notice: 'Combination was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @combination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combinations/1
  # DELETE /combinations/1.json
  def destroy
    @combination = Combination.find(params[:id])
    @combination.destroy

    respond_to do |format|
      format.html { redirect_to combinations_url }
      format.json { head :no_content }
    end
  end
end
