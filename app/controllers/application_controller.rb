class ApplicationController < ActionController::Base
    helper_method :createScenarios
    
    def createScenarios 
        Game.create!(:title=>"Narrative Title 1", :text=>"This is where the narrative should be.")
        Game.create!(:title=>"Narrative Title 2", :text=>"This is where the narrative should be.")
        Game.create!(:title=>"Narrative Title 3", :text=>"This is where the narrative should be.")
        Game.create!(:title=>"Narrative Title 4", :text=>"This is where the narrative should be.")
        Game.create!(:title=>"Narrative Title 5", :text=>"This is where the narrative should be.")
        Game.create!(:title=>"Narrative Title 6", :text=>"This is where the narrative should be.")
    end
end
