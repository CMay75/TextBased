class GamesController < ApplicationController
    def index
    end
    
    def new
    end
    
    def create
        render plain: params[:game].inspect
    end
end
