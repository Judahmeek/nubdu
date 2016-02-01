require 'rails_helper'
describe 'BehaviorsController', :type => :routing do
    
    describe 'For Systems', :type => :routing do
    
        it 'routes get /sys/:system_slug/:version_slug/howitworks to behaviors#show' do
        expect(:get => "/sys/rails/4.2.0/howitworks").to route_to(
        :controller => "behaviors",
        :action => "show",
        :system_slug => "rails",
        :version_slug => "4.2.0"
        )
        end
    
    end
    
    describe 'For Components', :type => :routing do
    
        it 'routes get /sys/:system_slug/:version_slug/:component_slug/howitworks to behaviors#show' do
        expect(:get => "/sys/rails/4.2.0/active_record/howitworks").to route_to(
        :controller => "behaviors",
        :action => "show",
        :system_slug => "rails",
        :version_slug => "4.2.0",
        :component_slug => "active_record"
        )
        end
        
    end
    
    describe "Helpers" do
        
        describe 'For Systems', :type => :routing do
    
            it "routes get version_howitworks to behaviors#show" do
                expect(:get => version_howitworks_path(
                    :system_slug => "rails",
                    :version_slug => "4.2.0"
                    )).to route_to(
                    :controller => "behaviors",
                    :action => "show",
                    :system_slug => "rails",
                    :version_slug => "4.2.0"
                    )
            end
        
        end
        
        describe 'For Components', :type => :routing do
        
            it "routes get component_howitworks to behaviors#show" do
                expect(:get => component_howitworks_path(
                    :system_slug => "rails",
                    :version_slug => "4.2.0",
                    :component_slug => "active_record"
                    )).to route_to(
                    :controller => "behaviors",
                    :action => "show",
                    :system_slug => "rails",
                    :version_slug => "4.2.0",
                    :component_slug => "active_record"
                    )
            end
            
        end
    end
    
end