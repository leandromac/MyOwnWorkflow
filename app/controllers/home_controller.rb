class HomeController < ApplicationController

    def index
        @skills = Skill.all
        @members = Member.all
        @clients = Client.all
        @orders = Order.all
    end
end
