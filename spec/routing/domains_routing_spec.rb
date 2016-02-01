require 'rails_helper'
describe 'DomainsController', :type => :routing do
    
    it 'does not route to domains#index' do
    end
    
    it 'routes get /domain to domains#new' do
        expect(get("/domain/135/dom")).to route_to(
        :controller => "domains",
        :action => "new",
        :domain_id => "135"
        )
    end
    
    it 'routes post /domain\sto domains#create' do
        expect(post("/domain")).to route_to("domains#create")
    end
    
    it 'routes get /domain/:slug/ to domains#show' do
        expect(:get => "/domain/web-development").to route_to(
        :controller => "domains",
        :action => "show",
        :slug => "web-development"
        )
    end
    
    it 'routes get /domain/:id/edit to domains#edit' do
        expect(:get => "/domain/12/edit").to route_to(
        :controller => "domains",
        :action => "edit",
        :id => "12"
        )
    end
    
    it 'routes put /domain/:id/ to domains#update' do
        expect(:put => "/domain/12").to route_to(
        :controller => "domains",
        :action => "update",
        :id => "12"
        )
    end
    
    it 'routes delete /domain/:id/ to domains#destroy' do
        expect(:delete => "/domain/12").to route_to(
        :controller => "domains",
        :action => "destroy",
        :id => "12"
        )
    end
    
    describe "Helpers" do
        it "routes new_domain_path to domains#new" do
            expect(:get => new_domain_path('135')).to route_to(
                :controller => "domains",
                :action => "new",
                :domain_id => '135'
                )
        end
        
        it "routes post domain_path to domains#create" do
            expect(:post => domains_path).to route_to('domains#create')
        end
        
        it "routes get domain_path to domains#show" do
            expect(:get => domain_path('web-dev')).to route_to(
                :controller => "domains",
                :action => "show",
                :slug => "web-dev"
                )
        end
        
        it "routes edit_domain_path to domains#edit" do
            expect(:get => edit_domain_path(1)).to route_to(
                :controller => "domains",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put domain_path to domains#update" do
            expect(:put => domain_path(1)).to route_to(
                :controller => "domains",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete domain_path to domains#destroy" do
            expect(:delete => domain_path(1)).to route_to(
                :controller => "domains",
                :action => "destroy",
                :id => "1"
                )
        end
    end
end