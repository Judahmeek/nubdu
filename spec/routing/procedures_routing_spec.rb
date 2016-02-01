require 'spec_helper'
require 'rails_helper'
describe 'proceduresController', :type => :routing do
    
    it 'does not route to procedures#index' do
    end
    
    describe "new routes" do
        
        it 'routes get /vers/135/proc to procedures#new' do
            expect(:get => "/vers/135/proc").to route_to(
            :controller => "procedures",
            :action => "new",
            :version_id => "135"
            )
        end
    
        it 'routes get /comp/135/proc to procedures#new' do
            expect(:get => "/comp/135/proc").to route_to(
            :controller => "procedures",
            :action => "new",
            :component_id => "135"
            )
        end
    end
    
    describe "Show Routes" do
        
        it 'routes get /:slug/with/:system_slug/:version_slug/ to procedures#show' do
            expect(:get => "/redirecting-unauthenticated-users/with/devise/2.3.4").to route_to(
            :controller => "procedures",
            :action => "show",
            :system_slug => "devise",
            :version_slug => "2.3.4",
            :slug => "redirecting-unauthenticated-users"
            )
        end
        
        it 'routes get /:slug/with/:system_slug/:version_slug/:component_slug to procedures#show' do
            expect(:get => "/redirecting-unauthenticated-users/with/devise/2.3.4/component").to route_to(
            :controller => "procedures",
            :action => "show",
            :system_slug => "devise",
            :version_slug => "2.3.4",
            :component_slug => "component",
            :slug => "redirecting-unauthenticated-users"
            )
        end
    end
    
    it 'routes post /proc/ to procedures#create' do
        expect(:post => "/proc/").to route_to('procedures#create')
    end
    
    it 'routes get /proc/:id/edit to procedures#edit' do
        expect(:get => "/proc/12/edit").to route_to(
        :controller => "procedures",
        :action => "edit",
        :id => "12"
        )
    end
    
    it 'routes put /proc/:id/ to procedures#update' do
        expect(:put => "/proc/12/").to route_to(
        :controller => "procedures",
        :action => "update",
        :id => "12"
        )
    end
    
    it 'routes delete /proc/:id/ to procedures#destroy' do
        expect(:delete => "/proc/12/").to route_to(
        :controller => "procedures",
        :action => "destroy",
        :id => "12"
        )
    end
    
    describe "Helpers" do
        
        describe "for new routes" do
            
            it "routes get new_version_procedure_path to procedures#new" do
                expect(:get => new_version_procedure_path(
                    :version_id => "135"
                    )).to route_to(
                    :controller => "procedures",
                    :action => "new",
                    :version_id => "135"
                    )
            end
            
            
            
            it "routes get new_component_procedure_path to procedures#new" do
                expect(:get => new_component_procedure_path(
                    :component_id => "135"
                    )).to route_to(
                    :controller => "procedures",
                    :action => "new",
                    :component_id => "135"
                    )
            end
        end
        
        it "routes post procedures_path to procedures#create" do
            expect(:post => procedures_path).to route_to('procedures#create')
        end
        
        describe "for show routes" do
            
            it "routes get version_procedure_path to procedures#show" do
                expect(:get => version_procedure_path(
                    :system_slug => "web-dev",
                    :version_slug => "1.2.1",
                    :slug => 'no-idea'
                    )).to route_to(
                    :controller => "procedures",
                    :action => "show",
                    :system_slug => "web-dev",
                    :version_slug => "1.2.1",
                    :slug => 'no-idea'
                    )
            end
            
            
            it "routes get component_procedure_path to procedures#show" do
                expect(:get => component_procedure_path(
                    :system_slug => "web-dev",
                    :version_slug => "1.2.1",
                    :component_slug => 'no-idea',
                    :slug => "even less of an idea"
                    )).to route_to(
                    :controller => "procedures",
                    :action => "show",
                    :system_slug => "web-dev",
                    :version_slug => "1.2.1",
                    :component_slug => "no-idea",
                    :slug => "even less of an idea"
                    )
            end
        end
        
        it "routes edit_procedure_path to procedures#edit" do
            expect(:get => edit_procedure_path(1)).to route_to(
                :controller => "procedures",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put procedure_path to procedures#update" do
            expect(:put => procedure_path(1)).to route_to(
                :controller => "procedures",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete procedure_path to procedures#destroy" do
            expect(:delete => procedure_path(1)).to route_to(
                :controller => "procedures",
                :action => "destroy",
                :id => "1"
                )
        end
    end
end