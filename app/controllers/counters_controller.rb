class CountersController < ApplicationController
    def new
        session[:counter] ||= 0
        @count ||= session[:counter]
    end

    def edit
        @count = params[:counter]
    end

    def show
    end

    def update
        session[:counter] = params[:counter]
        @count = params[:counter]
    end
end
