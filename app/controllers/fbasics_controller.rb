class FbasicsController < ApplicationController
  before_action :set_fbasic, only: %i[ show edit update destroy ]
  before_action :authenticate_farmer!

  # GET /fbasics or /fbasics.json
  def index
    @fbasics = Fbasic.all
  end

  # GET /fbasics/1 or /fbasics/1.json
  def show
  end

  # GET /fbasics/new
  def new
    @fbasic = Fbasic.new
  end

  # GET /fbasics/1/edit
  def edit
  end

  # POST /fbasics or /fbasics.json
  def create
    @fbasic = Fbasic.new(fbasic_params)

    respond_to do |format|
      if @fbasic.save
        format.html { redirect_to @fbasic, notice: "Fbasic was successfully created." }
        format.json { render :show, status: :created, location: @fbasic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fbasic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fbasics/1 or /fbasics/1.json
  def update
    respond_to do |format|
      if @fbasic.update(fbasic_params)
        format.html { redirect_to @fbasic, notice: "Fbasic was successfully updated." }
        format.json { render :show, status: :ok, location: @fbasic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fbasic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fbasics/1 or /fbasics/1.json
  def destroy
    @fbasic.destroy
    respond_to do |format|
      format.html { redirect_to fbasics_url, notice: "Fbasic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fbasic
      @fbasic = Fbasic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fbasic_params
      params.require(:fbasic).permit(:aadhar, :name, :dob, :gender, :address, :pincode, :mobno, :farmer_id)
    end
end
