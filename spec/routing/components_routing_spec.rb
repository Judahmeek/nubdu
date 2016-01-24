require 'spec_helper'
describe 'ComponentsController', :type => :routing do
    
    it 'does not route to components#index' do
    end
    
    it 'routes get /system/:system_slug/:version_slug/component to components#new' do
        expect(:get => "/system/rails/4.2.0/new").to route_to(
        :controller => "components",
        :action => "new",
        :system_slug => "rails",
        :version_slug => "4.2.0"
        )
    end
    
    it 'routes post /system/:system_slug/:version_slug/component to components#create' do
        expect(:post => "/system/rails/4.2.0/").to route_to(
        :controller => "components",
        :action => "create",
        :system_slug => "rails",
        :version_slug => "4.2.0"
        )
    end
    
    it 'routes get /system/:system_slug/:version_slug/:slug to components#show' do
        expect(:get => "/system/rails/4.2.0/active_record/").to route_to(
        :controller => "components",
        :action => "show",
        :system_slug => "rails",
        :version_slug => "4.2.0",
        :slug => "active_record"
        )
    end
    
    it 'routes get /system/:system_slug/:version_slug/:slug/edit to components#edit' do
        expect(:get => "/system/rails/4.2.0/active_record/edit").to route_to(
        :controller => "components",
        :action => "edit",
        :system_slug => "rails",
        :version_slug => "4.2.0",
        :slug => "active_record"
        )
    end
    
    it 'routes put /system/:system_slug/:version_slug/:slug/ to components#update' do
        expect(:put => "/system/rails/4.2.0/active_record/").to route_to(
        :controller => "components",
        :action => "update",
        :system_slug => "rails",
        :version_slug => "4.2.0",
        :slug => "active_record"
        )
    end
    
    it 'routes delete /system/:system_slug/:version_slug/:slug/ to components#destroy' do
        expect(:delete => "/system/rails/4.2.0/active_record/").to route_to(
        :controller => "components",
        :action => "destroy",
        :system_slug => "rails",
        :version_slug => "4.2.0",
        :slug => "active_record"
        )
    end
end