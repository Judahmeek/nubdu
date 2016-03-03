require 'rails_helper'
describe 'tagsController', :type => :routing do
    
    it 'does not route to tags#index' do
    end
    
    it 'routes get /new to tag#new' do
        expect(get("/tag/new")).to route_to("tags#new")
    end
    
    it 'routes post /tag to tag#create' do
        expect(post("/tag")).to route_to("tags#create")
    end
    
    it 'does not route to to tags#show' do
    end
    
    it 'routes get /tag/:id/edit to tags#edit' do
        expect(:get => "/tag/135/edit").to route_to(
        :controller => "tags",
        :action => "edit",
        :id => "135"
        )
    end
    
    it 'routes put /tag/:id/ to tags#update' do
        expect(:put => "/tag/135").to route_to(
        :controller => "tags",
        :action => "update",
        :id => "135"
        )
    end
    
    it 'routes delete /tag/:id/ to tags#destroy' do
        expect(:delete => "/tag/135").to route_to(
        :controller => "tags",
        :action => "destroy",
        :id => "135"
        )
    end
    
    describe "Helpers" do
        it "routes new_tag_path to tags#new" do
            expect(:get => new_tag_path).to route_to("tags#new")
        end
        
        it "routes post tag_path to tags#create" do
            expect(:post => tags_path).to route_to('tags#create')
        end
        
        it "does not route to to tags#show" do
        end
        
        it "routes edit_tag_path to tags#edit" do
            expect(:get => edit_tag_path(1)).to route_to(
                :controller => "tags",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put tag_path to tags#update" do
            expect(:put => tag_path(1)).to route_to(
                :controller => "tags",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete tag_path to tags#destroy" do
            expect(:delete => tag_path(1)).to route_to(
                :controller => "tags",
                :action => "destroy",
                :id => "1"
                )
        end
    end
end