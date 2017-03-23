class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]
  before_filter :authorize
  before_filter :authorize_admin, only: [:new, :edit, :create, :update, :destroy]
  
  def userbill	
	@bills = Bill.where(apartment_number: params[:apartment_number])
	render "/bills/index"
  end

  # GET /bills
  # GET /bills.json
  def index
	@current_user ||= User.find(session[:user_id])
	if @current_user.username == "admin"
		@bills = Bill.all
    else
		@bills = Bill.where(apartment_number: @current_user.apartment_number)
	end
	
	@bills = @bills.sort_by(&:due_date).reverse
	
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
  end

  # GET /bills/new
  def new
    @bill = Bill.new
  end

  # GET /bills/1/edit
  def edit
  end

  # POST /bills
  # POST /bills.json
  def create
    @bill = Bill.new(bill_params)

    respond_to do |format|
      if @bill.save
        format.html { redirect_to @bill, notice: 'Bill was successfully created.' }
        format.json { render :show, status: :created, location: @bill }
      else
        format.html { render :new }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bills/1
  # PATCH/PUT /bills/1.json
  def update
    respond_to do |format|
      if @bill.update(bill_params)
        format.html { redirect_to @bill, notice: 'Bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill }
      else
        format.html { render :edit }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill.destroy
    respond_to do |format|
      format.html { redirect_to bills_url, notice: 'Bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill
      @bill = Bill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_params
      params.require(:bill).permit(:apartment_number, :rent, :electricity_bill, :water_bill, :due_date, :status)
    end
end
