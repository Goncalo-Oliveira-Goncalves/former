class CountersController < ApplicationController
    def new
        session[:counter] ||= 0
        @count ||= session[:counter]
    end

    def edit
        @count = params[:counter]
    end

    def show
        @count ||= session[:counter]
    end

    def update
        session[:counter] = params[:counter]
        @count = params[:counter]

        respond_to do |format|
            format.html do |html|
                redirect_to root_path
            end
        end
    end
end
