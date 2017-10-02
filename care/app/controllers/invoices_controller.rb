class InvoicesController < ApplicationController
  before_action :set_invoice, only: [:show, :edit, :update]

  # GET /invoices
  # GET /invoices.json
  def index
    @invoices = Invoice.all
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
    @payments = @invoice.payments
    @patient_id = @invoice.patient_id
  end

  # GET /invoices/new
  def new
    @invoice = Invoice.new
    @patient_id = params[:patient_id]
    @visits = Visit.where(:patient_id => @patient_id, :invoice_id => nil)
  end

  # GET /invoices/1/edit
  def edit
    @patient_id = @invoice.patient_id
    @visits = Visit.where(:invoice_id => @invoice.id)
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to Patient.find_by_id(@invoice.patient_id), notice: 'Invoice was successfully created.' }
        format.json { render :show, status: :created, location: @invoice }
      else
        @patient_id = @invoice.patient_id
        @visits = Visit.where(:patient_id => @patient_id, :invoice_id => nil)
        format.html { render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to Patient.find_by_id(@invoice.patient_id), notice: 'Invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice }
      else
        @patient_id = @invoice.patient_id
        @visits = Visit.where(:invoice_id => @invoice.id)
        format.html { render :edit }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  /def destroy
    @invoice.destroy
    respond_to do |format|
      format.html { redirect_to Patient.find_by_id(@invoice.patient_id), notice: 'Invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end/

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice
      @invoice = Invoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_params
      #params.fetch(:invoice, {})
      params.require(:invoice).permit(:issuedate, :outstandingamt, :comments, :marked, :patient_id, {:visit_ids => []}) 

    end
end
