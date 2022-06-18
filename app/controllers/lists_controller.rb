class ListsController < ApplicationController
  before_action :set_user, only: [:new, :create, :publish]

  def index
    # search
    if params[:query].present?
      @ordered_lists = List.global_search(params[:query])
    else
      @ordered_lists = List.ordered_published_lists
    end
  end

  def new
    @list = List.new
    @item = Item.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save
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
    @fav = current_user.favourite_lists.find_by(list_id: @list.id)
    @vote = current_user.votes.find_by(list_id: @list.id)
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
    redirect_to current_user
  end

  def publish
    @list = find_list
    @list.published = true
    @list.save
    redirect_to current_user
  end

  def tagged
    if params[:tag].present?
      @lists = List.tagged_with(params[:tag])
    else
      @lists = List.all
    end
  end

  private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title, :id, :tag_list, :photo)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
