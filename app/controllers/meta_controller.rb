class MetaController < ApplicationController
    def about
        render json: { author: "Abdi Hussein", last_updated: "23 April 2021" }
    end
end