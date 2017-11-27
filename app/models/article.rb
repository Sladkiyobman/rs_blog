class Article < ApplicationRecord
  # Длина заголовка 5+ символов
  validates :title, presence:  true, length: {minimum: 5}

end
