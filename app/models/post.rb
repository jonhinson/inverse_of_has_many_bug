class Post < ActiveRecord::Base
  belongs_to :blog, inverse_of: :posts
  attr_accessible :body, :title

  after_save :propogate_word_count_to_blog

  def propogate_word_count_to_blog
    blog.update_total_word_count if body_changed?
  end
end
