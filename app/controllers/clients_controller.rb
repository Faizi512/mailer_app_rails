class ClientsController < ApplicationController




# before_filter :authenticate_person!
# before_filter ->{ authenticate_person! :admin }, only: [:new, :create, :edit, :update, :destroy]

# before_action :authenticate_client!, only: [:new, :edit, :create, :update, :show, :destroy]
before_action :authenticate_admin!, only: [:index]
before_action :check_client, only: [:show]


  def index
  	@clients = Client.paginate(page: params[:page], :per_page => 7)

  end

  def show
     @client = Client.find(params[:id])
  end

private

 def check_client
      @client = Client.find(params[:id])
       flash[:danger] = "You can only view your own information."
      redirect_to(root_url) unless @client == current_client or admin_signed_in?
    end

end
