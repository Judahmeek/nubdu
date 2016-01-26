require 'rails_helper'
describe 'DomainCategoriesController', :type => :routing do
    
    it 'does not route to domain_categories#index' do
    end
    
    it 'routes get / to domain_categories#new' do
        expect(get("/dc/new")).to route_to("domain_categories#new")
    end
    
    it 'routes post /dc to domain_categories#create' do
        expect(post("/dc")).to route_to("domain_categories#create")
    end
    
    it 'routes get /dc/:id to domain_categories#show' do
        expect(:get => "/dc/35").to route_to(
        :controller => "domain_categories",
        :action => "show",
        :id => "35"
        )
    end
    
    it 'routes get /dc/:id/edit to domain_categories#edit' do
        expect(:get => "/dc/35/edit").to route_to(
        :controller => "domain_categories",
        :action => "edit",
        :id => "35"
        )
    end
    
    it 'routes put /dc/:id to domain_categories#update' do
        expect(:put => "/dc/35").to route_to(
        :controller => "domain_categories",
        :action => "update",
        :id => "35"
        )
    end
    
    it 'routes delete /dc/:id to domain_categories#destroy' do
        expect(:delete => "/dc/35").to route_to(
        :controller => "domain_categories",
        :action => "destroy",
        :id => "35"
        )
    end
end
