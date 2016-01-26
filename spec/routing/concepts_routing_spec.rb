require 'spec_helper'
require 'rails_helper'
describe 'ConceptsController', :type => :routing do
    
    it 'routes get /concept to concept#new' do
        expect(get("/concept/new")).to route_to("concepts#new")
    end
    
    it 'routes post /concept to concept#create' do
        expect(post("/concept")).to route_to("concepts#create")
    end
    
    it 'routes get /concept/:slug/ to concepts#show' do
        expect(:get => "/concept/code-reuse").to route_to(
        :controller => "concepts",
        :action => "show",
        :slug => "code-reuse"
        )
    end
    
    it 'routes get /concept/:id/edit to concepts#edit' do
        expect(:get => "/concept/12/edit").to route_to(
        :controller => "concepts",
        :action => "edit",
        :id => "12"
        )
    end
    
    it 'routes put /concept/:slug/ to concepts#update' do
        expect(:put => "/concept/12").to route_to(
        :controller => "concepts",
        :action => "update",
        :id => "12"
        )
    end
    
    it 'routes delete /concept/:slug/ to concepts#destroy' do
        expect(:delete => "/concept/12").to route_to(
        :controller => "concepts",
        :action => "destroy",
        :id => "12"
        )
    end
    
    describe "Helpers" do
        it "routes new_concept_path to concepts#new" do
            expect(:get => new_concept_path).to route_to(:controller => "concepts", :action => "new")
        end
        
        it "routes post concept_path to concepts#create" do
            expect(:post => concepts_path).to route_to(
                :controller => "concepts",
                :action => "create"
                )
        end
        
        it "routes get concept_path to concepts#show" do
            expect(:get => concept_path('web-dev')).to route_to(
                :controller => "concepts",
                :action => "show",
                :slug => "web-dev"
                )
        end
        
        it "routes edit_concept_path to concepts#edit" do
            expect(:get => edit_concept_path(1)).to route_to(
                :controller => "concepts",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put concept_path to concepts#update" do
            expect(:put => concept_path(1)).to route_to(
                :controller => "concepts",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete concept_path to concepts#destroy" do
            expect(:delete => concept_path(1)).to route_to(
                :controller => "concepts",
                :action => "destroy",
                :id => "1"
                )
        end
    end
end
