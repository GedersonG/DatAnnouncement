require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of products' do
        get products_path
        
        assert_response :success
        assert_select '.product', 2
    end

    test 'render a detail product page' do
        get product_path(products(:Product1))

        assert_response :success
        assert_select '.title', 'Monitor Gaming'
        assert_select '.description', '20 Pulgadas'
        assert_select '.price', '40000$'
    end

    test 'render a new product form' do
        get new_product_path

        assert_response :success
        assert_select 'form'
    end

    test 'allows to create a new product' do
        post products_path, params: {
            product: {
                title: 'Mouse gaming',
                description: '5200 DPI',
                price: 30000,
                category_id: categories(:perifericos).id
            }
        }

        assert_redirected_to products_path
        assert_equal flash[:notice], 'Product was successfully created.'
    end

    test 'does not to create a new product with empty fields' do
        post products_path, params: {
            product: {
                title: '',
                description: 'The title and price is empty',
                price: ''
            }
        }

        assert_response :unprocessable_entity
    end

    test 'render an edit product form' do
        get edit_product_path(products(:Product1))

        assert_response :success
        assert_select 'form'
    end

    test 'allows to update a product' do
        patch product_path(products(:Product1)), params: {
            product: {
                title: 'Other title',
                description: 'Description two',
                price: 10
            }
        }

        assert_redirected_to products_path
        assert_equal flash[:notice], 'Product was successfully updated.'
    end

    test 'does not allow to update a product with an invalid field' do
        patch product_path(products(:Product1)), params: {
            product: {
                title: nil,
                description: 'Description two',
                price: nil
            }
        }

        assert_response :unprocessable_entity
    end

    test 'can delete products' do
        assert_difference('Product.count', -1) do
            delete product_path(products(:Product1))
        end

        assert_redirected_to products_path
        assert_equal flash[:notice], 'Product was successfully removed.'
    end
end