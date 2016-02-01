require 'spec_helper'
require 'rails_helper'
describe 'ScopesController', :type => :routing do
    
    it 'routes get /scope/:concept_id/scope to scopes#new' do
        expect(:get => "/concept/135/scope").to route_to(
        :controller => "scopes",
        :action => "new",
        :concept_id => "135"
        )
    end
    
    it 'routes post /scope/ to scopes#create' do
        expect(:post => "/scope/").to route_to('scopes#create')
    end
    
    it 'routes get /concept/:concept_slug/:slug to scopes#show' do
        expect(:get => "/concept/code-reuse/rails").to route_to(
        :controller => "scopes",
        :action => "show",
        :concept_slug => "code-reuse",
        :slug => "rails"
        )
    end
    
    it 'routes get /scope/:id/edit to scopes#edit' do
        expect(:get => "/scope/12/edit").to route_to(
        :controller => "scopes",
        :action => "edit",
        :id => "12"
        )
    end
    
    it 'routes put /scope/:id to scopes#update' do
        expect(:put => "/scope/12").to route_to(
        :controller => "scopes",
        :action => "update",
        :id => "12"
        )
    end
    
    it 'routes delete /scope/:id to scopes#destroy' do
        expect(:delete => "/scope/12").to route_to(
        :controller => "scopes",
        :action => "destroy",
        :id => "12"
        )
    end
    
    describe "Helpers" do
        it "routes new_scope_path to scopes#new" do
            expect(:get => new_scope_path('135')).to route_to(
                :controller => "scopes",
                :action => "new",
                :concept_id => "135"
                )
        end
        
        it "routes post scopes_path to scopes#create" do
            expect(:post => scopes_path).to route_to('scopes#create')
        end
        
        it "routes get concept_scope_path to scopes#show" do
            expect(:get => concept_scope_path({:concept_slug => "web-dev",
                :slug => "rails"})).to route_to(
                :controller => "scopes",
                :action => "show",
                :concept_slug => "web-dev",
                :slug => "rails"
                )
        end
        
        it "routes edit_scope_path to scopes#edit" do
            expect(:get => edit_scope_path(1)).to route_to(
                :controller => "scopes",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put scope_path to scopes#update" do
            expect(:put => scope_path(1)).to route_to(
                :controller => "scopes",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete scope_path to scopes#destroy" do
            expect(:delete => scope_path(1)).to route_to(
                :controller => "scopes",
                :action => "destroy",
                :id => "1"
                )
        end
    end
end
