class ItemsController < ApplicationController
  before_action :set_list, only: [:new, :create]
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "Saved"
    else
      flash[:notice] = "Not valid"
      render :new
  end

  def edit
    @item = find_item
  end

  def update
    @item = find_item
    if @item.update(item_params)
      flash[:notice] = "Updated!"
    else
      flash[:notice] = "Not Valid"
      render :edit
  end

  def destroy
    @item = find_item
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :link, :list_id)
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
