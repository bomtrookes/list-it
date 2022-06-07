class ListsController < ApplicationController
  # read - for Search see line 35 onwards
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    @list.save
    if list.save
      redirect_to user_lists_path, notice: "List Created!"
    else
      render :new
    end
  end

  # read individual lists
  def show
    @list = find_list
    @item = Item.new
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

  private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title, :votes, :published)
  end
end

# def index
#   if params[:query].present?
#     @lit = List.search_by_list_title(params[:query])
#   else
#     @list = List.all
#   end
# end
