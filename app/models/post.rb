class Post < ApplicationRecord

  default_scope lambda { order(created_at: :desc) }
end
