class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find params[:id]
  end

  def new
    @actor = Actor.new
  end

  def create
    actor = Actor.create(actor_params)

    redirect_to actors_path
  end

  def destroy
    @actor = Actor.find(params[:id])
    print @actor
    @actor.destroy

    redirect_to actors_path
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def update
    @actor = Actor.find(params[:id])
    @actor.update(actor_params)

    redirect_to actor_path(@actor)
  end

  private #Pourquoi on met les actors_params en private ? 
  
  def actor_params
    params.require(:actor).permit(:name, :description)
  end
  

end
