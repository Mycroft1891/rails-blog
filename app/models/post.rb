class Post < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings

  default_scope lambda { order(created_at: :desc) }

  validates :title, :body, :image, :permalink, presence: true

  def tag_list=(list)
    tag_list = list.split(',').collect { |t| t.strip.downcase }.uniq
    new_and_found_tags = tag_list.collect { |t| Tag.find_or_create_by(name: t) }
    self.tags = new_and_found_tags
  end

  def tag_list
    self.tags.collect(&:name).join(', ')
  end

end
