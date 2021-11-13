class Review < ApplicationRecord
  belongs_to :user
  belongs_to :superhero

  # validates :content, length: { minimum: 30 }
end
