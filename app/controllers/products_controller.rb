class ProductsController < ApplicationController
    def index
        @categories = Category.all.order(name: :asc).load_async
        @products = Product.all.with_attached_photo.order(created_at: :desc).load_async
        if params[:category_id]
            @products = @products.where(category_id: params[:category_id])
        end
        if params[:min_price].present?
            @products = @products.where('price >= ?', params[:min_price])
        end
        if params[:max_price].present?
            @products = @products.where('price <= ?', params[:max_price])
        end
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
            redirect_to products_path, notice: t('.created')
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        find_product
    end

    def update
        if find_product.update(product_params)
            redirect_to products_path, notice: t('.updated')
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        find_product.destroy
        redirect_to products_path, notice: t('.destroyed')
    end

    def find_product
        @product = Product.find(params[:id])
    end

    private
    def product_params
        params.require(:product).permit(:title, :description, :price, :photo, :category_id)
    end
end