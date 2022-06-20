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
    if @item.save
      redirect_to user_list_path(user_id: current_user, id: @item.list)
    else
      flash[:notice] = "Invalid"
      redirect_to user_list_path(user_id: current_user, id: @item.list)
    end
  end

  def edit
    @item = find_item
  end

  def update
    @item = find_item
    if @item.update(item_params)
      respond_to do |format|
        format.html { redirect_to items_path }
        format.text { render partial: "lists/item_infos", locals: { item: @item }, formats: [:html] }
      end
      flash[:notice] = "Updated!"
    else
      flash[:notice] = "Invalid"
      render :edit
    end
  end

  def destroy
    @item = find_item
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :list_id)
  end

  def find_item
    @item = Item.find(params[:id])
  end

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  # def set_list
  #   @list = List.find(params[:list_id])
  # end
end
