class BillsController < ApplicationController
  def new
    @bill = Bill.new
  end

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

  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
  end

  private
  def bill_params
    params.require(:bill).permit(:total_amount, {bill_items_attributes: [:bill_id, :id, :name, :quantity, :amount]})
  end
end
