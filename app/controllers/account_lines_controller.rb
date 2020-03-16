class AccountLinesController < ApplicationController
  before_action :set_account_line, only: [:show, :edit, :update, :destroy]

  # GET /account_lines
  # GET /account_lines.json
  def index
    @account_lines = AccountLine.all
  end

  # GET /account_lines/1
  # GET /account_lines/1.json
  def show
  end

  # GET /account_lines/new
  def new
    @account_line = AccountLine.new
  end

  # GET /account_lines/1/edit
  def edit
  end

  # POST /account_lines
  # POST /account_lines.json
  def create
    @account_line = AccountLine.new(account_line_params)

    respond_to do |format|
      if @account_line.save
        format.html { redirect_to @account_line, notice: 'Account line was successfully created.' }
        format.json { render :show, status: :created, location: @account_line }
      else
        format.html { render :new }
        format.json { render json: @account_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_lines/1
  # PATCH/PUT /account_lines/1.json
  def update
    respond_to do |format|
      if @account_line.update(account_line_params)
        format.html { redirect_to @account_line, notice: 'Account line was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_line }
      else
        format.html { render :edit }
        format.json { render json: @account_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_lines/1
  # DELETE /account_lines/1.json
  def destroy
    @account_line.destroy
    respond_to do |format|
      format.html { redirect_to account_lines_url, notice: 'Account line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_line
      @account_line = AccountLine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_line_params
      params.require(:account_line).permit(:total, :sale_id, :current_account_id)
    end
end
