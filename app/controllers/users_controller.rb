class UsersController < ApplicationController
    # user db?
    def index
        @users = User.all.order(created_at: :desc)
    end
   
end
  