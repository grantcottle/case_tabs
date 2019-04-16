class UsersController < ApplicationController
    def index
        @user = CLIENT.user("@casetabs")
        @tweets = CLIENT.user_timeline(@user)
    end

    def show
    end
end