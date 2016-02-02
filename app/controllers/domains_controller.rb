class DomainsController < ApplicationController
    def new
    end
    
    def create
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
