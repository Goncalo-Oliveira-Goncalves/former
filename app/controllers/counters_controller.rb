class CountersController < ApplicationController
    def new
        @count ||= 0
    end

    def update
        @count = params[:counter]
    end
end
