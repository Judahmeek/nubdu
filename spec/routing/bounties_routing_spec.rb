require 'rails_helper'
describe 'bountiesController', :type => :routing do
    
    it 'does not route to bounties#index' do
    end
    
    it 'routes get /new to bounty#new' do
        expect(get("/bty/new")).to route_to("bounties#new")
    end
    
    it 'routes post /bty to bounty#create' do
        expect(post("/bty")).to route_to("bounties#create")
    end
    
    it 'routes get /bty/:id/ to bounties#show' do
        expect(:get => "/bty/135").to route_to(
        :controller => "bounties",
        :action => "show",
        :id => "135"
        )
    end
    
    it 'routes get /bty/:id/edit to bounties#edit' do
        expect(:get => "/bty/135/edit").to route_to(
        :controller => "bounties",
        :action => "edit",
        :id => "135"
        )
    end
    
    it 'routes put /bty/:id/ to bounties#update' do
        expect(:put => "/bty/135").to route_to(
        :controller => "bounties",
        :action => "update",
        :id => "135"
        )
    end
    
    it 'routes delete /bty/:id/ to bounties#destroy' do
        expect(:delete => "/bty/135").to route_to(
        :controller => "bounties",
        :action => "destroy",
        :id => "135"
        )
    end
    
    describe "Helpers" do
        it "routes new_bounty_path to bounties#new" do
            expect(:get => new_bounty_path).to route_to("bounties#new")
        end
        
        it "routes post bounty_path to bounties#create" do
            expect(:post => bounties_path).to route_to('bounties#create')
        end
        
        it "routes get bounty_path to bounties#show" do
            expect(:get => bounty_path(135)).to route_to(
                :controller => "bounties",
                :action => "show",
                :id => "135"
                )
        end
        
        it "routes edit_bounty_path to bounties#edit" do
            expect(:get => edit_bounty_path(1)).to route_to(
                :controller => "bounties",
                :action => "edit",
                :id => "1"
                )
        end
        
        it "routes put bounty_path to bounties#update" do
            expect(:put => bounty_path(1)).to route_to(
                :controller => "bounties",
                :action => "update",
                :id => "1"
                )
        end
        
        it "routes delete bounty_path to bounties#destroy" do
            expect(:delete => bounty_path(1)).to route_to(
                :controller => "bounties",
                :action => "destroy",
                :id => "1"
                )
        end
        
        it "routes get bountyboard_path to bounties#board" do
            expect(:get => bountyboard_path).to route_to('bounties#board')
        end
    end
end