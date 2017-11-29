class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  # Длина заголовка 5+ символов
  validates :title, presence:  true, length: {minimum: 5}

end
