class DomainsController < ApplicationController
    before_action :authenticate_user!, :except => [:show, :index]
    
    def new
        @domain = Domain.new
        @parent_id = params[:parent_id]
    end
    
    def create
        @domain = Domain.new(domain_params)
        parent = Domain.find(@domain.parent_id)
        @domain.breadcrumbs = "#{parent.breadcrumbs}/#{parent.cached_slug}"
        @domain.cached_slug = @domain.title.paramterize
        @domain.save
        
        redirect_to domain_path(@domain.cached_slug)
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
