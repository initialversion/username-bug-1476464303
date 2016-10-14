class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new
    @store.name = params[:name]
    @store.merchant_id = params[:merchant_id]

    if @store.save
      redirect_to "/stores", :notice => "Store created successfully."
    else
      render 'new'
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])

    @store.name = params[:name]
    @store.merchant_id = params[:merchant_id]

    if @store.save
      redirect_to "/stores", :notice => "Store updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @store = Store.find(params[:id])

    @store.destroy

    redirect_to "/stores", :notice => "Store deleted."
  end
end
