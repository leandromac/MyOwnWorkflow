class SearchController < ApplicationController

    def clients
        @clients = Client.search(params[:q])
    end

    def members
        @members = Member.descending_order(params[:page])
        @members = Member.search(params[:q])
    end

end
