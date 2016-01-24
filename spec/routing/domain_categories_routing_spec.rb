require 'spec_helper'
describe 'DomainCategoriesController', :type => :routing do
    
    it 'does not route to domain_categories#index' do
    end
    
    it 'routes get / to domain_categories#new' do
        expect(get("/domain_categories/new")).to route_to("domain_categories#new")
    end
    
    it 'routes post /domain_categories to domain_categories#create' do
        expect(post("/domain_categories")).to route_to("domain_categories#create")
    end
    
    it 'routes get /domain_categories/:id to domain_categories#show' do
        expect(:get => "/domain_categories/35").to route_to(
        :controller => "domain_categories",
        :action => "show",
        :id => "35"
        )
    end
    
    it 'routes get /domain_categories/:id/edit to domain_categories#edit' do
        expect(:get => "/domain_categories/35/edit").to route_to(
        :controller => "domain_categories",
        :action => "edit",
        :id => "35"
        )
    end
    
    it 'routes put /domain_categories/:id to domain_categories#update' do
        expect(:put => "/domain_categories/35").to route_to(
        :controller => "domain_categories",
        :action => "update",
        :id => "35"
        )
    end
    
    it 'routes delete /domain_categories/:id to domain_categories#destroy' do
        expect(:delete => "/domain_categories/35").to route_to(
        :controller => "domain_categories",
        :action => "destroy",
        :id => "35"
        )
    end
end
