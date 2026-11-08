class UsersController < ApplicationController
    def new
    end

    def create
        user = User.build(params)

        respond_to do |format|
            format.html do |html|
                if user.save
                    redirect_to root_path
                else
                    redirect_to new_users_path
                end
            end
        end
    end
end