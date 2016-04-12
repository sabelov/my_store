class ItemsController < ApplicationController
    
  def index
      unless @items = Item.all
          render text: "page not found", status: 404
      end
  end
  
  # /items/1 GET
  def show
      unless @item = Item.where(id: params[:id]).first
        render text: "page not found", status: 404
      end
  end
  
  # /items/new GET
  def new
      
  end
  
  # items/1/edit GET
  def edit
      
  end
  
  # /items POST
  def create
    item_params = params.require(:item).permit(:name, :description, :price, :weight, :real)
    @item = Item.create(item_params)
    render text: "#{@item.id}: #{@item.name}: (#{!@item.new_record?})"
  end
  
  # /items/1 PUT
  def update
      
  end
  
  # /items/1 DELETE 
  def destroy
      
  end
end
