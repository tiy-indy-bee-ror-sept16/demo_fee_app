class ThingsController < ApplicationController

  def index
    @things = Thing.all
    respond_to do |format|
      format.html {}
      format.json {
        render json: @things
      }
    end
  end

  def show
    @thing = Thing.find(params[:id])
    render json: @thing
  end

  def new
    @thing = Thing.new
  end

  def create
    @thing = Thing.new
    @thing.name = params[:thing][:name]
    @thing.body = params[:thing][:body]
    @thing.save!
    redirect_to :root
  end

end
