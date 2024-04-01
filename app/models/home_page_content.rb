class HomePageContent < ApplicationRecord
  has_one_attached :photo  # Active Storage pour la gestion des fichiers attachés

  # Validation personnalisée pour s'assurer qu'une photo est attachée
  validate :photo_presence, if: -> { photo.attached? }

  private

  def photo_presence
    errors.add(:photo, "can't be blank") unless photo.attached?
  end
end
