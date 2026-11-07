class CountersController < ApplicationController
    def update
        @count = params[:counter]
    end
end
