class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new; end

  def create; end

  def updated; end
end
