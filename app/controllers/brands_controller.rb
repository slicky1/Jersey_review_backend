class BrandsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        brands = Brand.all
        # render json: brands, only: [:name, :img_source]
        render json: brands
      end

      def create
        brands = Brand.create(brand_params)
        render json: brands, status: :created
    
    end
    def show
        brand = find_brand
        # render json: brand, only: [:name, :img_url]
        render json: brand
    
    end

    def update
        brand = find_brand
        brand.update(brand_params)
       render json: brand
    end

    def destroy
        brand = find_brand
        brand.destroy
       head :no_content
    end



    private

    def brand_params
        params.require(:brand).permit(:name)
    end

    def find_brand
        Brand.find(params[:id])
    end

    def render_not_found
        render json: { error: "brand not found" }, status: :not_found
    end
end
