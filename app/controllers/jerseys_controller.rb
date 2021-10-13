class JerseysController < ApplicationController
    # def index
    #     jerseys = Jersey.all
    #     # render json: jerseys, only: [:name, :img_source]
    #     render json: jerseys
    #   end

    def index
        team = Team.find(params[:team_id])
        jerseys = team.jerseys
        # render json: team, only: [:name, :img_source]
        render json: jerseys
      end

    #   def index
    #     country = Country.find(params[:country_id])
    #     teams = country.teams
    #     # render json: teams, only: [:name, :img_source]
    #     render json: teams
    #   end


      def create
        jerseys = Jersey.create(jersey_params)
        render json: jerseys, status: :created
    
    end
    def show
        # jersey = find_jersey
        # # render json: jersey, only: [:name, :img_url]
        # render json: jersey

        jersey = Jersey.find(params[:id])
        # jerseys = team.jerseys
        # render json: team, only: [:name, :img_source]
        render json: jersey, include: :reviews
    
    end

    def update
        jersey = find_jersey
        jersey.update(jersey_params)
       render json: jersey
    end

    def destroy
        jersey = find_jersey
        jersey.destroy
       head :no_content
    end



    private

    def jersey_params
        params.require(:jersey).permit(:name, :img_url)
    end

    def find_jersey
        Jersey.find(params[:id])
    end

    def render_not_found
        render json: { error: "jersey not found" }, status: :not_found
    end
end
