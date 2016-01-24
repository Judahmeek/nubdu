require 'spec_helper'
describe 'ScopesController', :type => :routing do
    
    it 'routes get /concept/:slug/new to scopes#new' do
        expect(:get => "/concept/code-reuse/new").to route_to(
        :controller => "scopes",
        :action => "new",
        :concept_slug => "code-reuse"
        )
    end
    
    it 'routes post /concept/:slug/ to scopes#create' do
        expect(:post => "/concept/code-reuse/").to route_to(
        :controller => "scopes",
        :action => "create",
        :concept_slug => "code-reuse"
        )
    end
    
    it 'routes get /concept/:concept_slug/:slug to scopes#show' do
        expect(:get => "/concept/code-reuse/rails").to route_to(
        :controller => "scopes",
        :action => "show",
        :concept_slug => "code-reuse",
        :slug => "rails"
        )
    end
    
    it 'routes get /concept/:concept_slug/:slug/edit to scopes#edit' do
        expect(:get => "/concept/code-reuse/rails/edit").to route_to(
        :controller => "scopes",
        :action => "edit",
        :concept_slug => "code-reuse",
        :slug => "rails"
        )
    end
    
    it 'routes put /concept/:concept_slug/:slug to scopes#update' do
        expect(:put => "/concept/code-reuse/rails").to route_to(
        :controller => "scopes",
        :action => "update",
        :concept_slug => "code-reuse",
        :slug => "rails"
        )
    end
    
    it 'routes delete /concept/:concept_slug/:slug to scopes#destroy' do
        expect(:delete => "/concept/code-reuse/rails").to route_to(
        :controller => "scopes",
        :action => "destroy",
        :concept_slug => "code-reuse",
        :slug => "rails"
        )
    end
end
