require 'rails_helper'
describe 'ProcedureSubmissionsCommentsController', :type => :routing do
    
    it 'does not route to procedure_submission_comments#index' do
    end
    
    it 'routes get /psc to domain#new' do
        expect(get("/psc/new")).to route_to("procedure_submission_comments#new")
    end
    
    it 'routes post /psc to domain#create' do
        expect(post("/psc")).to route_to("procedure_submission_comments#create")
    end
    
    it 'routes get /psc/:id/ to procedure_submission_comments#show' do
        expect(:get => "/psc/135").to route_to(
        :controller => "procedure_submission_comments",
        :action => "show",
        :id => "135"
        )
    end
    
    it 'routes get /psc/:id/edit to procedure_submission_comments#edit' do
        expect(:get => "/psc/135/edit").to route_to(
        :controller => "procedure_submission_comments",
        :action => "edit",
        :id => "135"
        )
    end
    
    it 'routes put /psc/:id/ to procedure_submission_comments#update' do
        expect(:put => "/psc/135").to route_to(
        :controller => "procedure_submission_comments",
        :action => "update",
        :id => "135"
        )
    end
    
    it 'routes delete /psc/:id/ to procedure_submission_comments#destroy' do
        expect(:delete => "/psc/135").to route_to(
        :controller => "procedure_submission_comments",
        :action => "destroy",
        :id => "135"
        )
    end
end