class CurrentAccountsController < ApplicationController
  before_action :set_current_account, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /current_accounts
  # GET /current_accounts.json
  def index
    @current_accounts = CurrentAccount.all
  end

  # GET /current_accounts/1
  # GET /current_accounts/1.json
  def show
  end

  # GET /current_accounts/new
  def new
    @current_account = CurrentAccount.new
  end

  # GET /current_accounts/1/edit
  def edit
  end

  # POST /current_accounts
  # POST /current_accounts.json
  def create
    @current_account = CurrentAccount.new(current_account_params)

    respond_to do |format|
      if @current_account.save
        format.html { redirect_to @current_account, notice: 'Current account was successfully created.' }
        format.json { render :show, status: :created, location: @current_account }
      else
        format.html { render :new }
        format.json { render json: @current_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_accounts/1
  # PATCH/PUT /current_accounts/1.json
  def update
    respond_to do |format|
      if @current_account.update(current_account_params)
        format.html { redirect_to @current_account, notice: 'Current account was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_account }
      else
        format.html { render :edit }
        format.json { render json: @current_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_accounts/1
  # DELETE /current_accounts/1.json
  def destroy
    @current_account.destroy
    respond_to do |format|
      format.html { redirect_to current_accounts_url, notice: 'Current account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_account
      @current_account = CurrentAccount.find_by_id(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def current_account_params
      params.require(:current_account).permit(:first_name, :last_name, :dni, :total, :account_status_id)
    end
end
