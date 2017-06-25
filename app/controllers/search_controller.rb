class SearchController < ApplicationController

    def clients
        @clients = Client.search(params[:q])
    end

    def members
        @members = Member.pagination_order(params[:page])
        @members = Member.search(params[:q],params[:page])
    end

end
