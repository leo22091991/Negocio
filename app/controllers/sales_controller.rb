class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.all
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
  end

  # GET /sales/new
  def new
    @sale = Sale.new
  end

  # GET /sales/1/edit
  def edit
  end

  # POST /sales
  # POST /sales.json
  def create
    if params[:current_account_id] != nil
      @sale = Sale.new(total_sale: set_total_sale, current_account_id: params[:current_account_id])
      current_cart.sale_lines.each do |sale_line|
        product_id = sale_line.product_id
        quantity = sale_line.quantity
        subtotal = sale_line.subtotal

        @sale.sale_lines.new(
          product_id: product_id,
          quantity: quantity,
          subtotal: subtotal
          )
      end
      #@current_account = CurrentAccount.find_by_id(params[:current_account_id])
      #@current_account.update(total: @current_account.set_totals!)
    else
      @sale = Sale.new(total_sale: set_total_sale)
      current_cart.sale_lines.each do |sale_line|
        product_id = sale_line.product_id
        quantity = sale_line.quantity
        subtotal = sale_line.subtotal

        @sale.sale_lines.new(
          product_id: product_id,
          quantity: quantity,
          subtotal: subtotal
          )
      end
    end

    respond_to do |format|
      if @sale.save
        format.html { redirect_to @sale, notice: 'Sale was successfully created.' }
        format.json { render :show, status: :created, location: @sale }

        current_cart.sale_lines.delete_all
        if @sale.current_account_id != nil
          @current_account = CurrentAccount.find_by_id(params[:current_account_id])
          @current_account.update(total: @current_account.set_totals!)
        end
      else
        format.html { render :new }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end

    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find_by_id(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sale_params
      params.require(:sale).permit(:current_account_id, sale_lines_attributes: [:quantity, :product_id])
    end

    def current_cart
      #user = current_user.id
      #@cart = Cart.find_by(user_id: user)
      @cart = current_user.carts.last
    end

    def set_total_sale
      #user = current_user.id
      c_cart = current_user.carts.last
      #current_cart = current_user.carts.last
      lines = c_cart.sale_lines
      total = 0.0
      lines.each do |line|
        total = total + line.subtotal
      end
      return total
    end
end
