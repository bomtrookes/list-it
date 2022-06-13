class ListsController < ApplicationController
  before_action :set_user, only: [:new, :create]

  # read - for Search see line 35 onwards
  def index
    @user = User.find(params[:user_id])
    # @lists = List.all
    if params[:tag].present?
      @lists = List.where(user_id: @user.id).tagged_with(params[:tag])
      # raise
    else
      @lists = List.where(user_id: @user.id)
    end
  end

  def new
    @list = List.new
    @item = Item.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save!
      redirect_to user_list_path(user_id: current_user, id: @list)
    else
      render :new
    end
  end

  # read individual lists
  def show
    @list = find_list
    @item = Item.new
    @related_lists = @list.find_related_tags
  end

  def edit
    @list = find_list
  end

  def update
    @list = find_list
    @list.update(list_params)
    redirect_to @list
  end

  def destroy
    @list = find_list
    @list.destroy
    redirect_to user_lists_path
  end

  # def tagged
  #   if params[:tag].present?
  #     @lists = List.tagged_with(params[:tag])
  #     raise
  #   else
  #     @lists = List.all
  #   end
  # end

  private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title, :tag_list)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end

# def index
#   if params[:query].present?
#     @lit = List.search_by_list_title(params[:query])
#   else
#     @list = List.all
#   end
# end
