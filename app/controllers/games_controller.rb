class GamesController < ApplicationController
    def show
        @game = Game.find(params[:id])
    end
    
    def index
    end
    
    def new
    end
    
    def create
        render plain: params[:game].inspect
    end
end
