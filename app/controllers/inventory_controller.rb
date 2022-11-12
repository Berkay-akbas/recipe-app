class InventoryController < ApplicationController

    
    ## Add index for inventory
    def index
      if current_user.nil?
        redirect_to new_user_session_path
      else
        @user = current_user
        @inventories = @user.inventories.all
      end
    end
    ## Add show for inventory
    def show
      @inventory = Inventory.find(params[:id])
    end

    ## Add new for inventory
    def new
      @user = current_user
      @inventory = Inventory.new
    end
    ## Add create for inventory
    
    def create
      @user = current_user
      inventory = @user.inventories.new(inventory_params)
      respond_to do |format|
        format.html do
          if inventory.save
            redirect_to inventory_path(inventory)
            flash[:success] = 'Inventory was created!'
          else
            flash.now[:error] = 'Error: Inventory could not be created'
            render :new
          end
        end
      end
    end
    ## Add destroy for inventory
    def destroy
      @user = current_user
      @inventory = @user.inventories.find(params[:id])
      @inventory.destroy
      redirect_to inventory_path
      flash[:success] = 'Inventory was deleted!'
    end
  
    private
    
    def inventory_params
        params.permit(:name)
    end
    
  
  end