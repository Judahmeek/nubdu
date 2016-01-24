require 'spec_helper'
describe 'proceduresController', :type => :routing do
    
    describe "routes from /system/:system_slug/:version_slug/" do
        
        it 'routes get /system/:system_slug/:version_slug/ to procedures#new' do
            expect(:get => "/system/rails/4.2.0/proc").to route_to(
            :controller => "procedures",
            :action => "new",
            :system_slug => "rails",
            :version_slug => "4.2.0"
            )
        end
        
        it 'routes post /system/:system_slug/:version_slug/ to procedures#create' do
            expect(:post => "/system/rails/4.2.0/proc").to route_to(
            :controller => "procedures",
            :action => "create",
            :system_slug => "rails",
            :version_slug => "4.2.0"
            )
        end
        
    end
    
    describe "routes from /system/:system_slug/:version_slug/:component_slug" do
    
        it 'routes get /system/:system_slug/:version_slug/:component_slug to procedures#new' do
            expect(:get => "/system/rails/4.2.0/active_record/proc").to route_to(
            :controller => "procedures",
            :action => "new",
            :system_slug => "rails",
            :version_slug => "4.2.0",
            :component_slug => "active_record"
            )
        end
        
        
        
        it 'routes post /system/:system_slug/:version_slug/:component_slug to procedures#create' do
            expect(:post => "/system/rails/4.2.0/active_record/proc").to route_to(
            :controller => "procedures",
            :action => "create",
            :system_slug => "rails",
            :version_slug => "4.2.0",
            :component_slug => "active_record"
            )
        end
        
    end
    
    it 'routes get /:slug to procedures#index' do
        expect(:get => "/redirecting-unauthenticated-users").to route_to(
        :controller => "procedures",
        :action => "index",
        :procedure_slug => "redirecting-unauthenticated-users"
        )
    end
    
    it 'routes get /:procedure_slug/with/:system to procedures#index' do
        expect(:get => "/redirecting-unauthenticated-users/with/devise").to route_to(
        :controller => "procedures",
        :action => "index",
        :procedure_slug => "redirecting-unauthenticated-users",
        :procedure_system => "devise"
        )
    end
    
    it 'routes get /:procedure_slug/with/:procedure_system/:version to procedures#show' do
        expect(:get => "/redirecting-unauthenticated-users/with/devise/2.3.4").to route_to(
        :controller => "procedures",
        :action => "show",
        :procedure_slug => "redirecting-unauthenticated-users",
        :procedure_system => "devise",
        :version => "2.3.4"
        )
    end
    
    it 'routes delete /:procedure_slug/with/:procedure_system/:version to procedures#destroy' do
        expect(:delete => "/redirecting-unauthenticated-users/with/devise/2.3.4").to route_to(
        :controller => "procedures",
        :action => "destroy",
        :procedure_slug => "redirecting-unauthenticated-users",
        :procedure_system => "devise",
        :version => "2.3.4"
        )
    end
end