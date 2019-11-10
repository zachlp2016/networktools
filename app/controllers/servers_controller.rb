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
  end

  def post

  end
end
