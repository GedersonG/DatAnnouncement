class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def show_product
        @product = Product.find(params[:id])
    end
    
    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)

        if @product.save
            redirect_to products_path, notice: 'Product created'
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def product_params
        params.require(:product).permit(:title, :description, :price)
    end
end