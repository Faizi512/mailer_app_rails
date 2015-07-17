class ClientsController < ApplicationController


before_action :authenticate_admin!, only: [:index, :new, :create, :destroy]
before_action :check_client, only: [:show]
before_action :logged_in_client, only: [:edit, :update]


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

  def edit
    @client = Client.find(params[:id])

  end

    def update
    @client = Client.find(params[:id])
    if @client.update_attributes(client_params)
      flash[:success] = "Settings updated"
      redirect_to @client
    else
      render 'edit'
    end
  end

private

 def check_client
      @client = Client.find(params[:id])
      redirect_to(root_url) unless @client == current_client or admin_signed_in?
    end

      def client_params
      params.require(:client).permit(:name, :email, :nameofcontact, :phonenumber, :mailingaddress, :password,
                                   :password_confirmation, :logo)
    end

    def logged_in_client
      unless client_signed_in?
        flash[:danger] = "Please log in"
        redirect_to login_url
    end
  end

end
