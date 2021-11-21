class SubsidiesController < ApplicationController
  before_action :set_subsidy, only: %i[ show edit update destroy ]
  before_action :authenticate_farmer!

  # GET /subsidies or /subsidies.json
  def index
    @subsidies = Subsidy.all
  end

  # GET /subsidies/1 or /subsidies/1.json
  def show
  end

  # GET /subsidies/new
  def new
    @subsidy = Subsidy.new
  end

  # GET /subsidies/1/edit
  def edit
  end

  # POST /subsidies or /subsidies.json
  def create
    @subsidy = Subsidy.new(subsidy_params)

    respond_to do |format|
      if @subsidy.save
        format.html { redirect_to @subsidy, notice: "Subsidy was successfully created." }
        format.json { render :show, status: :created, location: @subsidy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @subsidy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subsidies/1 or /subsidies/1.json
  def update
    respond_to do |format|
      if @subsidy.update(subsidy_params)
        format.html { redirect_to @subsidy, notice: "Subsidy was successfully updated." }
        format.json { render :show, status: :ok, location: @subsidy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @subsidy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subsidies/1 or /subsidies/1.json
  def destroy
    @subsidy.destroy
    respond_to do |format|
      format.html { redirect_to subsidies_url, notice: "Subsidy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subsidy
      @subsidy = Subsidy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subsidy_params
      params.require(:subsidy).permit(:surveyno, :cropname, :amount, :farmer_id)
    end
end
