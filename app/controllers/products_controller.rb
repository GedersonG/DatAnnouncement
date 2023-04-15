class ProductsController < ApplicationController
    def index
        @categories = Category.all.order(name: :asc).load_async

        @pagy, @products = pagy_countless(FindProducts.new.
          callback(products_params_index).load_async, items: 4)
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

    def products_params_index
        params.permit(:category_id, :max_price, :min_price, :order_by, :query_txt)
    end

    private
    def product_params
        params.require(:product).permit(:title, :description, :price, :photo, :category_id)
    end
end