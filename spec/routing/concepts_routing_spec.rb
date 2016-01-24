require 'spec_helper'
describe 'ConceptsController', :type => :routing do
    
    it 'routes get /concept to concept#new' do
        expect(get("/concept")).to route_to("concepts#new")
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
    
    it 'routes get /concept/:concept_slug/edit to concepts#edit' do
        expect(:get => "/concept/code-reuse/edit").to route_to(
        :controller => "concepts",
        :action => "edit",
        :concept_slug => "code-reuse"
        )
    end
    
    it 'routes put /concept/:slug/ to concepts#update' do
        expect(:put => "/concept/code-reuse").to route_to(
        :controller => "concepts",
        :action => "update",
        :slug => "code-reuse"
        )
    end
    
    it 'routes delete /concept/:slug/ to concepts#destroy' do
        expect(:delete => "/concept/code-reuse").to route_to(
        :controller => "concepts",
        :action => "destroy",
        :slug => "code-reuse"
        )
    end
end
