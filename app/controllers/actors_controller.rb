class ActorsController < ApplicationController

  def index
    @actors = Actor.all
    print "hello"
    print @actors
  end

  def show
    @actor = Actor.find params[:id]
  end

end
