class TeamsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    # def index
    #     teams = Team.all
    #     # render json: teams, only: [:name, :img_source]
    #     render json: teams
    #   end


        def index
            country = Country.find(params[:country_id])
            teams = country.teams
            # render json: teams, only: [:name, :img_source]
            render json: teams
          end



      def create
        teams = Team.create(team_params)
        render json: teams, status: :created
    
    end
    def show
        team = find_team
        # render json: team, only: [:name, :img_url]
        render json: team
    
    end

    def update
        team = find_team
        team.update(team_params)
       render json: team
    end

    def destroy
        team = find_team
        team.destroy
       head :no_content
    end



    private

    def team_params
        params.require(:team).permit(:name, :img_url)
    end

    def find_team
        Team.find(params[:id])
    end

    def render_not_found
        render json: { error: "team not found" }, status: :not_found
    end
end
