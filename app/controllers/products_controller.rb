# frozen_string_literal: true

class ProductsController < ApplicationController
  skip_before_action :protect_pages, only: %i[index show]
  def index
    @categories = Category.all.order(name: :asc).load_async

    @pagy, @products = pagy_countless(FindProducts.new
      .callback(products_params_index).load_async, items: 6)
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
    authorize! find_product # Protection method
  end

  def update
    authorize! find_product # Protection method
    if find_product.update(product_params)
      redirect_to products_path, notice: t('.updated')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize! find_product # Protection method
    find_product.destroy
    redirect_to products_path, notice: t('.destroyed')
  end

  private

  def find_product
    @product ||= Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :photo, :category_id)
  end

  def products_params_index
    params.permit(:category_id, :max_price, :min_price, :order_by, :query_txt, :page, :favorites, :user_id)
  end
end
