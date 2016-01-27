require 'spec_helper'
require 'rails_helper'
describe 'VersionsController', :type => :routing do
    
    it 'does not route to versions#index' do
    end
    
    it 'routes get /sys/:system_slug/version to versions#new' do
        expect(:get => "/sys/devise/vers/new").to route_to(
        :controller => "versions",
        :action => "new",
        :system_slug => "devise"
        )
    end
    
    it 'routes post /sys/:system_slug/ to versions#create' do
        expect(:post => "/sys/devise/vers").to route_to(
        :controller => "versions",
        :action => "create",
        :system_slug => "devise"
        )
    end
    
    it 'routes get /sys/:system_slug/:slug/ to versions#show' do
        expect(:get => "/sys/devise/2.3").to route_to(
        :controller => "versions",
        :action => "show",
        :system_slug => "devise",
        :slug => "2.3"
        )
    end
    
    it 'routes get /vers/:id/edit to versions#edit' do
        expect(:get => "/vers/12/edit").to route_to(
        :controller => "versions",
        :action => "edit",
        :id => "12"
        )
    end
    
    it 'routes put /vers/:id/ to versions#update' do
        expect(:put => "/vers/12/").to route_to(
        :controller => "versions",
        :action => "update",
        :id => "12"
        )
    end
    
    it 'routes delete /vers/:id/ to versions#destroy' do
        expect(:delete => "/vers/12/").to route_to(
        :controller => "versions",
        :action => "destroy",
        :id => "12"
        )
    end
    
    describe "Helpers" do
        it "routes new_version_path to versions#new" do
            expect(:get => new_system_version_path('web-dev')).to route_to(
                :controller => "versions",
                :action => "new",
                :system_slug => "web-dev"
                )
        end
        
        it "routes post version_path to versions#create" do
            expect(:post => system_versions_path('web-dev')).to route_to(
                :controller => "versions",
                :action => "create",
                :system_slug => "web-dev"
                )
        end
        
        it "routes get version_path to versions#show" do
            expect(:get => system_version_path({:system_slug => "web-dev",
                :slug => "rails"})).to route_to(
                :controller => "versions",
                :action => "show",
                :system_slug => "web-dev",
                :slug => "rails"
                )
        end
        
        it "routes edit_version_path to versions#edit" do
            expect(:get => edit_version_path(1)).to route_to(
                :controller => "versions",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put version_path to versions#update" do
            expect(:put => version_path(1)).to route_to(
                :controller => "versions",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete version_path to versions#destroy" do
            expect(:delete => version_path(1)).to route_to(
                :controller => "versions",
                :action => "destroy",
                :id => "1"
                )
        end
    end
end