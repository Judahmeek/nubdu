require 'spec_helper'
describe 'ProcedureSubmissionsController', :type => :routing do
    
    it 'does not route to procedure_submissions#index' do
    end
    
    it 'routes get /ps to domain#new' do
        expect(get("/ps/new")).to route_to("procedure_submissions#new")
    end
    
    it 'routes post /ps to domain#create' do
        expect(post("/ps")).to route_to("procedure_submissions#create")
    end
    
    it 'routes get /ps/:id/ to procedure_submissions#show' do
        expect(:get => "/ps/135").to route_to(
        :controller => "procedure_submissions",
        :action => "show",
        :id => "135"
        )
    end
    
    it 'routes get /ps/:id/edit to procedure_submissions#edit' do
        expect(:get => "/ps/135/edit").to route_to(
        :controller => "procedure_submissions",
        :action => "edit",
        :id => "135"
        )
    end
    
    it 'routes put /ps/:id/ to procedure_submissions#update' do
        expect(:put => "/ps/135").to route_to(
        :controller => "procedure_submissions",
        :action => "update",
        :id => "135"
        )
    end
    
    it 'routes delete /ps/:id/ to procedure_submissions#destroy' do
        expect(:delete => "/ps/135").to route_to(
        :controller => "procedure_submissions",
        :action => "destroy",
        :id => "135"
        )
    end
end