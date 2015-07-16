class ClientsController < ApplicationController


before_action :authenticate_admin!, only: [:index]
before_action :check_client, only: [:show]


  def index
  	@clients = Client.paginate(page: params[:page], :per_page => 7)
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      log_in @client
      flash[:success] = "Welcome to NTP"
      redirect_to @client
    else
      render 'new'
    end
  end

  def show
     @client = Client.find(params[:id])
  end

private

 def check_client
      @client = Client.find(params[:id])
       flash.now[:danger] = "You can only view your own information."
      redirect_to(root_url) unless @client == current_client or admin_signed_in?
    end

      def client_params
      params.require(:client).permit(:name, :email, :nameofcontact, :phonenumber, :mailingaddress, :password,
                                   :password_confirmation)
    end

end
