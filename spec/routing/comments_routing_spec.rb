require 'rails_helper'
describe 'CommentsController', :type => :routing do
    
    it 'does not route to comments#index' do
    end
    
    it 'routes get /comment to domain#new' do
        expect(get("/comment/new")).to route_to("comments#new")
    end
    
    it 'routes post /comment to domain#create' do
        expect(post("/comment")).to route_to("comments#create")
    end
    
    it 'routes get /comment/:id/ to comments#show' do
        expect(:get => "/comment/135").to route_to(
        :controller => "comments",
        :action => "show",
        :id => "135"
        )
    end
    
    it 'routes get /comment/:id/edit to comments#edit' do
        expect(:get => "/comment/135/edit").to route_to(
        :controller => "comments",
        :action => "edit",
        :id => "135"
        )
    end
    
    it 'routes put /comment/:id/ to comments#update' do
        expect(:put => "/comment/135").to route_to(
        :controller => "comments",
        :action => "update",
        :id => "135"
        )
    end
    
    it 'routes delete /comment/:id/ to comments#destroy' do
        expect(:delete => "/comment/135").to route_to(
        :controller => "comments",
        :action => "destroy",
        :id => "135"
        )
    end
end