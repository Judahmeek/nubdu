require 'rails_helper'
describe 'ComponentsController', :type => :routing do
    
    it 'does not route to components#index' do
    end
    
    it 'routes get /vers/:version_id/comp to components#new' do
        expect(:get => "/vers/135/comp").to route_to(
        :controller => "components",
        :action => "new",
        :version_id => "135"
        )
    end
    
    it 'routes post /comp/ to components#create' do
        expect(:post => "/comp/").to route_to(
        :controller => "components",
        :action => "create",
        )
    end
    
    it 'routes get /sys/:system_slug/:version_slug/:slug to components#show' do
        expect(:get => "/sys/rails/4.2.0/active_record/").to route_to(
        :controller => "components",
        :action => "show",
        :system_slug => "rails",
        :version_slug => "4.2.0",
        :slug => "active_record"
        )
    end
    
    it 'routes get /comp/:id/edit to components#edit' do
        expect(:get => "/comp/12/edit").to route_to(
        :controller => "components",
        :action => "edit",
        :id => "12"
        )
    end
    
    it 'routes put /comp/:id/ to components#update' do
        expect(:put => "/comp/12/").to route_to(
        :controller => "components",
        :action => "update",
        :id => "12"
        )
    end
    
    it 'routes delete /comp/:id/ to components#destroy' do
        expect(:delete => "/comp/12/").to route_to(
        :controller => "components",
        :action => "destroy",
        :id => "12"
        )
    end
    
    describe "Helpers" do
        it "routes get new_component_path to components#new" do
            expect(:get => new_component_path(
                :version_id => "135"
                )).to route_to(
                :controller => "components",
                :action => "new",
                :version_id => "135"
                )
        end
        
        it "routes post components_path to components#create" do
            expect(:post => components_path
                ).to route_to(
                :controller => "components",
                :action => "create"
                )
        end
        
        it "routes get system_version_component_path to components#show" do
            expect(:get => version_component_path(
                :system_slug => "web-dev",
                :version_slug => "1.2.1",
                :slug => 'no-idea'
                )).to route_to(
                :controller => "components",
                :action => "show",
                :system_slug => "web-dev",
                :version_slug => "1.2.1",
                :slug => 'no-idea'
                )
        end
        
        it "routes edit_component_path to components#edit" do
            expect(:get => edit_component_path(1)).to route_to(
                :controller => "components",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put component_path to components#update" do
            expect(:put => component_path(1)).to route_to(
                :controller => "components",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete component_path to components#destroy" do
            expect(:delete => component_path(1)).to route_to(
                :controller => "components",
                :action => "destroy",
                :id => "1"
                )
        end
    end
end