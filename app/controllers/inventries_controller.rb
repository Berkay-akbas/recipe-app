class InventriesController < ActionController::Base
    def index
        @user = User.find(params[:user_id])
        @inventries = @user.inventries.order(created_at: :desc), items: 3
    end

    def show
        @user = User.find(params[:user_id])
        @inventries = Inventory.find(params[:id])
    end

   


end