require 'rails_helper'
describe 'CommentsController', :type => :routing do
    
    it 'does not route to comments#index' do
    end
    
    it 'routes get /com to comment#new' do
        expect(get("/sub/135/com")).to route_to(
        :controller => "comments",
        :action => "new",
        :submission_id => "135"
        )
    end
    
    it 'routes post /com to comment#create' do
        expect(post("/com")).to route_to("comments#create")
    end
    
    it 'routes get /com/:id/ to comments#show' do
        expect(:get => "/com/135").to route_to(
        :controller => "comments",
        :action => "show",
        :id => "135"
        )
    end
    
    it 'routes get /com/:id/edit to comments#edit' do
        expect(:get => "/com/135/edit").to route_to(
        :controller => "comments",
        :action => "edit",
        :id => "135"
        )
    end
    
    it 'routes put /com/:id/ to comments#update' do
        expect(:put => "/com/135").to route_to(
        :controller => "comments",
        :action => "update",
        :id => "135"
        )
    end
    
    it 'routes delete /com/:id/ to comments#destroy' do
        expect(:delete => "/com/135").to route_to(
        :controller => "comments",
        :action => "destroy",
        :id => "135"
        )
    end
    
    describe "Helpers" do
        it "routes new_submission_comment_path to comments#new" do
            expect(:get => new_submission_comment_path(135)).to route_to(
                :controller => "comments",
                :action => "new",
                :submission_id => "135"
                )
        end
        
        it "routes post comment_path to comments#create" do
            expect(:post => comments_path).to route_to('comments#create')
        end
        
        it "routes get comment_path to comments#show" do
            expect(:get => comment_path(135)).to route_to(
                :controller => "comments",
                :action => "show",
                :id => "135"
                )
        end
        
        it "routes edit_comment_path to comments#edit" do
            expect(:get => edit_comment_path(1)).to route_to(
                :controller => "comments",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put comment_path to comments#update" do
            expect(:put => comment_path(1)).to route_to(
                :controller => "comments",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete comment_path to comments#destroy" do
            expect(:delete => comment_path(1)).to route_to(
                :controller => "comments",
                :action => "destroy",
                :id => "1"
                )
        end
    end
end