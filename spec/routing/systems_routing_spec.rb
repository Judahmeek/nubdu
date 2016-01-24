require 'spec_helper'
describe 'SystemsController', :type => :routing do
    
    it 'does not route to systems#index' do
    end
    
    it 'routes get /system to systems#new' do
        expect(get("/system")).to route_to("systems#new")
    end
    
    it 'routes post /system to systems#create' do
        expect(post("/system")).to route_to("systems#create")
    end
    
    it 'routes get /system/:slug/ to systems#show' do
        expect(:get => "/system/devise").to route_to(
        :controller => "systems",
        :action => "show",
        :slug => "devise"
        )
    end
    
    it 'routes get /system/:slug/edit to systems#edit' do
        expect(:get => "/system/devise/edit").to route_to(
        :controller => "systems",
        :action => "edit",
        :system_slug => "devise"
        )
    end
    
    it 'routes put /system/:slug/ to systems#update' do
        expect(:put => "/system/devise").to route_to(
        :controller => "systems",
        :action => "update",
        :slug => "devise"
        )
    end
    
    it 'routes delete /system/:slug/ to systems#destroy' do
        expect(:delete => "/system/devise").to route_to(
        :controller => "systems",
        :action => "destroy",
        :slug => "devise"
        )
    end
end