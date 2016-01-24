require 'spec_helper'
describe 'VersionsController', :type => :routing do
    
    it 'does not route to versions#index' do
    end
    
    it 'routes get /system/:system_slug/version to versions#new' do
        expect(:get => "/system/devise/version").to route_to(
        :controller => "versions",
        :action => "new",
        :system_slug => "devise"
        )
    end
    
    it 'routes post /system/:system_slug/ to versions#create' do
        expect(:post => "/system/devise/version").to route_to(
        :controller => "versions",
        :action => "create",
        :system_slug => "devise"
        )
    end
    
    it 'routes get /system/:system_slug/:slug/ to versions#show' do
        expect(:get => "/system/devise/2.3").to route_to(
        :controller => "versions",
        :action => "show",
        :system_slug => "devise",
        :slug => "2.3"
        )
    end
    
    it 'routes get /system/:system_slug/:version_slug/edit to versions#edit' do
        expect(:get => "/system/devise/2.3.4/edit").to route_to(
        :controller => "versions",
        :action => "edit",
        :system_slug => "devise",
        :version_slug => "2.3.4"
        )
    end
    
    it 'routes put /system/:system_slug/:slug/ to versions#update' do
        expect(:put => "/system/devise/2.3.4/").to route_to(
        :controller => "versions",
        :action => "update",
        :system_slug => "devise",
        :slug => "2.3.4"
        )
    end
    
    it 'routes delete /system/:system_slug/:slug/ to versions#destroy' do
        expect(:delete => "/system/devise/2.3.4/").to route_to(
        :controller => "versions",
        :action => "destroy",
        :system_slug => "devise",
        :slug => "2.3.4"
        )
    end
end