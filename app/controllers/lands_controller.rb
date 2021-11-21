class LandsController < ApplicationController
  before_action :set_land, only: %i[ show edit update destroy ]
  before_action :authenticate_farmer!

  # GET /lands or /lands.json
  def index
    @lands = Land.all
  end

  # GET /lands/1 or /lands/1.json
  def show
  end

  # GET /lands/new
  def new
    @land = Land.new
  end

  # GET /lands/1/edit
  def edit
  end

  # POST /lands or /lands.json
  def create
    @land = Land.new(land_params)

    respond_to do |format|
      if @land.save
        format.html { redirect_to @land, notice: "Land was successfully created." }
        format.json { render :show, status: :created, location: @land }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @land.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lands/1 or /lands/1.json
  def update
    respond_to do |format|
      if @land.update(land_params)
        format.html { redirect_to @land, notice: "Land was successfully updated." }
        format.json { render :show, status: :ok, location: @land }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @land.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lands/1 or /lands/1.json
  def destroy
    @land.destroy
    respond_to do |format|
      format.html { redirect_to lands_url, notice: "Land was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_land
      @land = Land.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def land_params
      params.require(:land).permit(:surveyno, :area, :village, :agrioffice, :district, :ownershiptype, :farmer_id, :approved)
    end
end
