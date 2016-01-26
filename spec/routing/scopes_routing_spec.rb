require 'spec_helper'
require 'rails_helper'
describe 'ScopesController', :type => :routing do
    
    it 'routes get /scope/:slug/new to scopes#new' do
        expect(:get => "/concept/code-reuse/new").to route_to(
        :controller => "scopes",
        :action => "new",
        :concept_slug => "code-reuse"
        )
    end
    
    it 'routes post /scope/:slug/ to scopes#create' do
        expect(:post => "/concept/code-reuse/").to route_to(
        :controller => "scopes",
        :action => "create",
        :concept_slug => "code-reuse"
        )
    end
    
    it 'routes get /scope/:scope_slug/:slug to scopes#show' do
        expect(:get => "/concept/code-reuse/rails").to route_to(
        :controller => "scopes",
        :action => "show",
        :concept_slug => "code-reuse",
        :slug => "rails"
        )
    end
    
    it 'routes get /scope/:scope_slug/:slug/edit to scopes#edit' do
        expect(:get => "/scope/12/edit").to route_to(
        :controller => "scopes",
        :action => "edit",
        :id => "12"
        )
    end
    
    it 'routes put /scope/:scope_slug/:slug to scopes#update' do
        expect(:put => "/scope/12").to route_to(
        :controller => "scopes",
        :action => "update",
        :id => "12"
        )
    end
    
    it 'routes delete /scope/:scope_slug/:slug to scopes#destroy' do
        expect(:delete => "/scope/12").to route_to(
        :controller => "scopes",
        :action => "destroy",
        :id => "12"
        )
    end
    
    describe "Helpers" do
        it "routes new_scope_path to scopes#new" do
            expect(:get => new_concept_scope_path('web-dev')).to route_to(
                :controller => "scopes",
                :action => "new",
                :concept_slug => "web-dev"
                )
        end
        
        it "routes post scope_path to scopes#create" do
            expect(:post => concept_scopes_path('web-dev')).to route_to(
                :controller => "scopes",
                :action => "create",
                :concept_slug => "web-dev"
                )
        end
        
        it "routes get scope_path to scopes#show" do
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
