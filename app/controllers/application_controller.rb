class ApplicationController < ActionController::Base
    include Authentication # Concern for authentication logic
    include Authorization # Concern for authorization logic
    include Language # Concern for language configuration
    include Pagy::Backend
end