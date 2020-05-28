class Post < ApplicationRecord
  has_rich_text :body
  self.per_page = 5

end
