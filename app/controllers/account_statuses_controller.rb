class AccountStatusesController < ApplicationController
  before_action :set_account_status, only: [:show, :edit, :update, :destroy]

  # GET /account_statuses
  # GET /account_statuses.json
  def index
    @account_statuses = AccountStatus.all
  end

  # GET /account_statuses/1
  # GET /account_statuses/1.json
  def show
  end

  # GET /account_statuses/new
  def new
    @account_status = AccountStatus.new
  end

  # GET /account_statuses/1/edit
  def edit
  end

  # POST /account_statuses
  # POST /account_statuses.json
  def create
    @account_status = AccountStatus.new(account_status_params)

    respond_to do |format|
      if @account_status.save
        format.html { redirect_to @account_status, notice: 'Account status was successfully created.' }
        format.json { render :show, status: :created, location: @account_status }
      else
        format.html { render :new }
        format.json { render json: @account_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_statuses/1
  # PATCH/PUT /account_statuses/1.json
  def update
    respond_to do |format|
      if @account_status.update(account_status_params)
        format.html { redirect_to @account_status, notice: 'Account status was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_status }
      else
        format.html { render :edit }
        format.json { render json: @account_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_statuses/1
  # DELETE /account_statuses/1.json
  def destroy
    @account_status.destroy
    respond_to do |format|
      format.html { redirect_to account_statuses_url, notice: 'Account status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_status
      @account_status = AccountStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_status_params
      params.require(:account_status).permit(:description)
    end
end
