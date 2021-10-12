class CountriesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    
        def index
            countries = Country.all
            # render json: countries, only: [:name, :img_source]
            render json: countries
          end
    
        # def index
        #     team = Team.find(params[:team_id])
        #     countries = team.countries
        #     # render json: teams, only: [:name, :img_source]
        #     render json: countries
        #   end
    
          def create
            countries = Country.create(country_params)
            render json: countries, status: :created
        
        end
        def show
            country = find_country 
            # render json: country, only: [:name, :img_url]
            render json: country, include: :teams
        
        end
    
        def update
            country = find_country
            country.update(country_params)
           render json: country
        end
    
        def destroy
            country = find_country
            country.destroy
           head :no_content
        end
    
    
    
        private
    
        def country_params
            params.require(:country).permit(:name, :img_url)
        end
    
        def find_country
            Country.find(params[:id])
        end
    
        def render_not_found
            render json: { error: "country not found" }, status: :not_found
        end
    end