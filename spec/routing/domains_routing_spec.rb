require 'spec_helper'
describe 'DomainsController', :type => :routing do
    
    it 'does not route to domains#index' do
    end
    
    it 'routes get /domain to domains#new' do
        expect(get("/domain")).to route_to("domains#new")
    end
    
    it 'routes post /domain to domains#create' do
        expect(post("/domain")).to route_to("domains#create")
    end
    
    it 'routes get /domain/:slug/ to domains#show' do
        expect(:get => "/domain/web-development").to route_to(
        :controller => "domains",
        :action => "show",
        :slug => "web-development"
        )
    end
    
    it 'routes get /domain/:slug/edit to domains#edit' do
        expect(:get => "/domain/web-development/edit").to route_to(
        :controller => "domains",
        :action => "edit",
        :slug => "web-development"
        )
    end
    
    it 'routes put /domain/:slug/ to domains#update' do
        expect(:put => "/domain/web-development").to route_to(
        :controller => "domains",
        :action => "update",
        :slug => "web-development"
        )
    end
    
    it 'routes delete /domain/:slug/ to domains#destroy' do
        expect(:delete => "/domain/web-development").to route_to(
        :controller => "domains",
        :action => "destroy",
        :slug => "web-development"
        )
    end
end