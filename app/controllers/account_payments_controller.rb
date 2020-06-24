class AccountPaymentsController < ApplicationController
  before_action :set_account_payment, only: [:show, :edit, :update, :destroy]

  # GET /account_payments
  # GET /account_payments.json
  def index
    @account_payments = AccountPayment.all
  end

  # GET /account_payments/1
  # GET /account_payments/1.json
  def show
  end

  # GET /account_payments/new
  def new
    @account_payment = AccountPayment.new
  end

  # GET /account_payments/1/edit
  def edit
  end

  # POST /account_payments
  # POST /account_payments.json
  def create
    @account_payment = AccountPayment.new(total: params[:total], current_account_id: params[:current_account_id])

    respond_to do |format|
      if @account_payment.save
        format.html { redirect_to @account_payment, notice: 'Account payment was successfully created.' }
        format.json { render :show, status: :created, location: @account_payment }
        
        @ca = CurrentAccount.find_by_id(params[:current_account_id])
        @ca.update(total: @ca.set_totals!)
      else
        format.html { render :new }
        format.json { render json: @account_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_payments/1
  # PATCH/PUT /account_payments/1.json
  def update
    respond_to do |format|
      if @account_payment.update(account_payment_params)
        format.html { redirect_to @account_payment, notice: 'Account payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_payment }
      else
        format.html { render :edit }
        format.json { render json: @account_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_payments/1
  # DELETE /account_payments/1.json
  def destroy
    @account_payment.destroy
    respond_to do |format|
      format.html { redirect_to account_payments_url, notice: 'Account payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_payment
      @account_payment = AccountPayment.find_by_id(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_payment_params
      params.require(:account_payment).permit(:total, :current_account_id)
    end
end
