class ObasicsController < ApplicationController
  before_action :set_obasic, only: %i[ show edit update destroy ]
  
  # GET /obasics or /obasics.json
  def index
    @obasics = Obasic.all
  end

  # GET /obasics/1 or /obasics/1.json
  def show
  end

  # GET /obasics/new
  def new
    @obasic = Obasic.new
  end

  # GET /obasics/1/edit
  def edit
  end

  # POST /obasics or /obasics.json
  def create
    @obasic = Obasic.new(obasic_params)

    respond_to do |format|
      if @obasic.save
        format.html { redirect_to @obasic, notice: "Basic details were successfully created." }
        format.json { render :show, status: :created, location: @obasic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @obasic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obasics/1 or /obasics/1.json
  def update
    respond_to do |format|
      if @obasic.update(obasic_params)
        format.html { redirect_to @obasic, notice: "Basic details were successfully updated." }
        format.json { render :show, status: :ok, location: @obasic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @obasic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obasics/1 or /obasics/1.json
  def destroy
    @obasic.destroy
    respond_to do |format|
      format.html { redirect_to obasics_url, notice: "Basic details were successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obasic
      @obasic = Obasic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def obasic_params
      params.require(:obasic).permit(:aadhar, :name, :dob, :gender, :address, :pincode, :mob_no, :officer_id)
    end
end
