class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one_attached :featured_image
  after_validation :set_slug, only: [:create, :update]

  private
  def set_slug
    self.slug = title.to_s.parameterize
    end 

end
