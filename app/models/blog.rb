class Blog < ActiveRecord::Base
  has_many :posts, inverse_of: :blog, dependent: :destroy
  attr_accessible :name, :total_word_count

  def update_total_word_count
    word_count = posts.inject(0) { |sum, obj| sum += obj.body.split.size }
    update_column(:total_word_count, word_count)
  end
end
