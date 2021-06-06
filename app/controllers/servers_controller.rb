class ServersController < ApplicationController

  def show
    @server = Server.find_by(:id)
  end

  def index
    @servers = Server.all
    if @servers.empty?
      flash.notice = "You currently haven't setup any servers."
    end
  end

  def new
    @server = Server.new
  end

  def create
    @server = Server.new
    @server = Server.create(server_params)
    @server.user_id = current_user.id
    if @server.save
      flash.notice = "New server successfully created."
      redirect_to server_path(@server.id)
    else
      flash.notice = "Server not successfully created."
    end
  end

  def server_params
    params.require(:server).permit(:server_name, :ip_address, :operating_system, :user_id)
  end
end
