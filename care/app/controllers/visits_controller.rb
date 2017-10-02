class VisitsController < ApplicationController
  before_action :set_visit, only: [:show, :edit, :update]

  # GET /visits
  # GET /visits.json
  def index
    @visits = Visit.all
  end

  # GET /visits/1
  # GET /visits/1.json
  def show
  end

  # GET /visits/new
  def new
    @visit = Visit.new
    @patient_id = params[:patient_id]
  end

  # GET /visits/1/edit
  def edit
    @patient_id = @visit.patient_id
  end

  # POST /visits
  # POST /visits.json
  def create
    @visit = Visit.new(visit_params)

    respond_to do |format|
      if @visit.save
        format.html { redirect_to Patient.find_by_id(@visit.patient_id), notice: 'Visit was successfully created.' }
        format.json { render :show, status: :created, location: @visit }
      else
        @patient_id = @visit.patient_id
        format.html { render :new }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visits/1
  # PATCH/PUT /visits/1.json
  def update
    respond_to do |format|
      if @visit.update(visit_params)
        format.html { redirect_to Patient.find_by_id(@visit.patient_id), notice: 'Visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit }
      else
        @patient_id = @visit.patient_id
        format.html { render :edit }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visits/1
  # DELETE /visits/1.json
  /def destroy
    @visit.destroy
    respond_to do |format|
      format.html { redirect_to Patient.find_by_id(@visit.patient_id), notice: 'Visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end/

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = Visit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_params
      #params.fetch(:visit, {})
      params.require(:visit).permit(:visitdate, :staff_id, :service_id, :patient_id)
    end
end
