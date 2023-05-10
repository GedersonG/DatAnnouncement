# frozen_string_literal: true

module Favoritable
  extend ActiveSupport::Concern

  included do
    has_many :favorites, dependent: :destroy

    def favorite
      favorites.find_by(user: Current.user)
    end

    def favorite!
      favorites.create(user: Current.user)
    end

    def unfavorite!
      favorite.destroy
    end
  end
end
