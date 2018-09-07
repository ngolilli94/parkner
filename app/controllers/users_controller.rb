class UsersController < ApplicationController

    before_action :authenticate_user!

    def index
        @user = User.find(params[:id])

    end

    def show
        @user = User.find(params[:id])
        # method: get
        # action: index
        # template: users/show.html.erb
    end

    def new
        @user = User.new
    # method: get
    # action: index
    # template: users/new.html.erb
    end

    def edit
        @user = User.find(params[:id])
        # template: users/edit.html.erb
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to @user
        else
            render 'new'
        end
    end
    
    def update
        @user = User.find(params[:id])
    
        if @user.update(user_params) && @user.user.update(user_params)
            redirect_to @user
        else
            render 'edit'
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    private

        def user_params
            params.require(:user).permit(:first_name, :last_name, :phone, :email, :password)
        end
end
