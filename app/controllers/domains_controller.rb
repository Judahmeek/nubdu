class DomainsController < ApplicationController
    before_action :authenticate_user!, :except => [:show, :index]
    
    def new
        @domain = Domain.new
        @parent_id = params[:parent_id]
    end
    
    def create
        @domain = Domain.new
    end
    
    def show
        @domain = Domain.find_by( cached_slug: params[:slug] )
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
end
