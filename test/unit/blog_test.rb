require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  test "records of has_many association get duplicated in memory" do
    blog = Blog.create(name: 'Foo Blog')
    blog.posts << Post.new(title: 'Blah', body: 'Some post')
    assert_equal 1, blog.posts.to_a.count
  end
end
