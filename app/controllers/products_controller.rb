class ProductsController < ApplicationController
    def index
        @products = Product.all.with_attached_photo
    end

    def show
        find_product
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

    def edit
        find_product
    end

    def update
        if find_product.update(product_params)
            redirect_to products_path, notice: 'Product updated'
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        find_product.destroy
        redirect_to products_path, notice: 'Product removed'
    end

    def find_product
        @product = Product.find(params[:id])
    end

    private
    def product_params
        params.require(:product).permit(:title, :description, :price, :photo)
    end
end