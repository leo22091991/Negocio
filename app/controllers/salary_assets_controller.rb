class SalaryAssetsController < ApplicationController
  before_action :set_salary_asset, only: [:show, :edit, :update, :destroy]

  # GET /salary_assets
  # GET /salary_assets.json
  def index
    @salary_assets = SalaryAsset.all
  end

  # GET /salary_assets/1
  # GET /salary_assets/1.json
  def show
  end

  # GET /salary_assets/new
  def new
    @salary_asset = SalaryAsset.new
  end

  # GET /salary_assets/1/edit
  def edit
  end

  # POST /salary_assets
  # POST /salary_assets.json
  def create
    @salary_asset = SalaryAsset.new(salary_asset_params)

    respond_to do |format|
      if @salary_asset.save
        format.html { redirect_to @salary_asset, notice: 'Salary asset was successfully created.' }
        format.json { render :show, status: :created, location: @salary_asset }
      else
        format.html { render :new }
        format.json { render json: @salary_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salary_assets/1
  # PATCH/PUT /salary_assets/1.json
  def update
    respond_to do |format|
      if @salary_asset.update(salary_asset_params)
        format.html { redirect_to @salary_asset, notice: 'Salary asset was successfully updated.' }
        format.json { render :show, status: :ok, location: @salary_asset }
      else
        format.html { render :edit }
        format.json { render json: @salary_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salary_assets/1
  # DELETE /salary_assets/1.json
  def destroy
    @salary_asset.destroy
    respond_to do |format|
      format.html { redirect_to salary_assets_url, notice: 'Salary asset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salary_asset
      @salary_asset = SalaryAsset.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def salary_asset_params
      params.require(:salary_asset).permit(:total, :asset_id)
    end
end
