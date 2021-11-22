class CompensationsController < ApplicationController
  before_action :set_compensation, only: %i[ show edit update destroy ]

  # GET /compensations or /compensations.json
  def index
    @compensations = Compensation.all
  end

  # GET /compensations/1 or /compensations/1.json
  def show
  end

  # GET /compensations/new
  def new
    @compensation = Compensation.new
  end

  # GET /compensations/1/edit
  def edit
  end

  # POST /compensations or /compensations.json
  def create
    @compensation = Compensation.new(compensation_params)

    respond_to do |format|
      if @compensation.save
        format.html { redirect_to @compensation, notice: "Compensation was successfully created." }
        format.json { render :show, status: :created, location: @compensation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @compensation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compensations/1 or /compensations/1.json
  def update
    respond_to do |format|
      if @compensation.update(compensation_params)
        format.html { redirect_to @compensation, notice: "Compensation was successfully updated." }
        format.json { render :show, status: :ok, location: @compensation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @compensation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compensations/1 or /compensations/1.json
  def destroy
    @compensation.destroy
    respond_to do |format|
      format.html { redirect_to compensations_url, notice: "Compensation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compensation
      @compensation = Compensation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def compensation_params
      params.require(:compensation).permit(:natcalname, :amount, :farmer_id, :approved)
    end
end
