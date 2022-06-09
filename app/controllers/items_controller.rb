class ItemsController < ApplicationController
  # before_action :set_user, only: [:new, :create]
  # before_action :set_list, only: [:new, :create]
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.list = List.find(params[:item][:list_id])
    if @item.save!
      redirect_to user_list_path(user_id: current_user, id: @item.list)
    else
      flash[:notice] = "Not valid"
      render :new
    end
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
  end

  def destroy
    @item = find_item
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :list_id)
  end

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  # def set_list
  #   @list = List.find(params[:list_id])
  # end
end
