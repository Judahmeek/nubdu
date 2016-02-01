require 'rails_helper'
describe 'SubmissionsController', :type => :routing do
    
    it 'does not route to submissions#index' do
    end
    
    it 'routes get /proc/:procedure_id/sub to submissions#new' do
        expect(:get => "/proc/135/sub").to route_to(
        :controller => "submissions",
        :action => "new",
        :procedure_id => "135"
        )
    end
    
    it 'routes post /sub to procedures#create' do
        expect(post("/sub")).to route_to("submissions#create")
    end
    
    it 'routes get /sub/:id/ to submissions#show' do
        expect(:get => "/sub/135").to route_to(
        :controller => "submissions",
        :action => "show",
        :id => "135"
        )
    end
    
    it 'routes get /sub/:id/edit to submissions#edit' do
        expect(:get => "/sub/135/edit").to route_to(
        :controller => "submissions",
        :action => "edit",
        :id => "135"
        )
    end
    
    it 'routes put /sub/:id/ to submissions#update' do
        expect(:put => "/sub/135").to route_to(
        :controller => "submissions",
        :action => "update",
        :id => "135"
        )
    end
    
    it 'routes delete /sub/:id/ to submissions#destroy' do
        expect(:delete => "/sub/135").to route_to(
        :controller => "submissions",
        :action => "destroy",
        :id => "135"
        )
    end
    
    describe "Helpers" do
        it "routes new_procedure_submission_path to submissions#new" do
            expect(:get => new_procedure_submission_path('135')).to route_to(
                :controller => "submissions",
                :action => "new",
                :procedure_id => "135"
                )
        end
        
        it "routes post submissions_path to submissions#create" do
            expect(:post => submissions_path).to route_to('submissions#create')
        end
        
        it "routes get submission_path to submissions#show" do
            expect(:get => submission_path(135)).to route_to(
                :controller => "submissions",
                :action => "show",
                :id => "135"
                )
        end
        
        it "routes edit_submission_path to submissions#edit" do
            expect(:get => edit_submission_path(1)).to route_to(
                :controller => "submissions",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put submission_path to submissions#update" do
            expect(:put => submission_path(1)).to route_to(
                :controller => "submissions",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete submission_path to submissions#destroy" do
            expect(:delete => submission_path(1)).to route_to(
                :controller => "submissions",
                :action => "destroy",
                :id => "1"
                )
        end
    end
end