class SalaryDiscountsController < ApplicationController
  before_action :set_salary_discount, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /salary_discounts
  # GET /salary_discounts.json
  def index
    @salary_discounts = SalaryDiscount.all
  end

  # GET /salary_discounts/1
  # GET /salary_discounts/1.json
  def show
  end

  # GET /salary_discounts/new
  def new
    @salary_discount = SalaryDiscount.new
  end

  # GET /salary_discounts/1/edit
  def edit
  end

  # POST /salary_discounts
  # POST /salary_discounts.json
  def create
    @salary_discount = SalaryDiscount.new(salary_discount_params)

    respond_to do |format|
      if @salary_discount.save
        format.html { redirect_to @salary_discount, notice: 'Salary discount was successfully created.' }
        format.json { render :show, status: :created, location: @salary_discount }
      else
        format.html { render :new }
        format.json { render json: @salary_discount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salary_discounts/1
  # PATCH/PUT /salary_discounts/1.json
  def update
    respond_to do |format|
      if @salary_discount.update(salary_discount_params)
        format.html { redirect_to @salary_discount, notice: 'Salary discount was successfully updated.' }
        format.json { render :show, status: :ok, location: @salary_discount }
      else
        format.html { render :edit }
        format.json { render json: @salary_discount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salary_discounts/1
  # DELETE /salary_discounts/1.json
  def destroy
    @salary_discount.destroy
    respond_to do |format|
      format.html { redirect_to salary_discounts_url, notice: 'Salary discount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salary_discount
      @salary_discount = SalaryDiscount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def salary_discount_params
      params.require(:salary_discount).permit(:total)
    end
end
