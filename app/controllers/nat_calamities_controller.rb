class NatCalamitiesController < ApplicationController
  before_action :set_nat_calamity, only: %i[ show edit update destroy ]

  # GET /nat_calamities or /nat_calamities.json
  def index
    @nat_calamities = NatCalamity.all
  end

  # GET /nat_calamities/1 or /nat_calamities/1.json
  def show
  end

  # GET /nat_calamities/new
  def new
    @nat_calamity = NatCalamity.new
  end

  # GET /nat_calamities/1/edit
  def edit
  end

  # POST /nat_calamities or /nat_calamities.json
  def create
    @nat_calamity = NatCalamity.new(nat_calamity_params)

    respond_to do |format|
      if @nat_calamity.save
        format.html { redirect_to @nat_calamity, notice: "Nat calamity was successfully created." }
        format.json { render :show, status: :created, location: @nat_calamity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nat_calamity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nat_calamities/1 or /nat_calamities/1.json
  def update
    respond_to do |format|
      if @nat_calamity.update(nat_calamity_params)
        format.html { redirect_to @nat_calamity, notice: "Nat calamity was successfully updated." }
        format.json { render :show, status: :ok, location: @nat_calamity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nat_calamity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nat_calamities/1 or /nat_calamities/1.json
  def destroy
    @nat_calamity.destroy
    respond_to do |format|
      format.html { redirect_to nat_calamities_url, notice: "Nat calamity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nat_calamity
      @nat_calamity = NatCalamity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nat_calamity_params
      params.require(:nat_calamity).permit(:name, :nctype, :month, :year)
    end
end
