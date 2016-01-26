require 'spec_helper'
require 'rails_helper'
describe 'SystemsController', :type => :routing do
    
    it 'does not route to systems#index' do
    end
    
    it 'routes get  to systems#new' do
        expect(get("/new")).to route_to("systems#new")
    end
    
    it 'routes post  to systems#create' do
        expect(post("")).to route_to("systems#create")
    end
    
    it 'routes get /:slug/ to systems#show' do
        expect(:get => "/devise").to route_to(
        :controller => "systems",
        :action => "show",
        :slug => "devise"
        )
    end
    
    it 'routes get /:slug/edit to systems#edit' do
        expect(:get => "/12/edit").to route_to(
        :controller => "systems",
        :action => "edit",
        :id => "12"
        )
    end
    
    it 'routes put /:slug/ to systems#update' do
        expect(:put => "/12").to route_to(
        :controller => "systems",
        :action => "update",
        :id => "12"
        )
    end
    
    it 'routes delete /:slug/ to systems#destroy' do
        expect(:delete => "/12").to route_to(
        :controller => "systems",
        :action => "destroy",
        :id => "12"
        )
    end
    
    describe "Helpers" do
        it "routes new_system_path to systems#new" do
            expect(:get => new_system_path).to route_to(
                :controller => "systems",
                :action => "new"
                )
        end
        
        it "routes post system_path to systems#create" do
            expect(:post => systems_path).to route_to(
                :controller => "systems",
                :action => "create"
                )
        end
        
        it "routes get system_path to systems#show" do
            expect(:get => system_path("web-dev")).to route_to(
                :controller => "systems",
                :action => "show",
                :slug => "web-dev"
                )
        end
        
        it "routes edit_system_path to systems#edit" do
            expect(:get => edit_system_path(1)).to route_to(
                :controller => "systems",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put system_path to systems#update" do
            expect(:put => system_path(1)).to route_to(
                :controller => "systems",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete system_path to systems#destroy" do
            expect(:delete => system_path(1)).to route_to(
                :controller => "systems",
                :action => "destroy",
                :id => "1"
                )
        end
    end
end