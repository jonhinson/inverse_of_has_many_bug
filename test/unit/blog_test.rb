require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  test "records of has_many association get duplicated in memory" do
    blog = Blog.create(name: 'Foo Blog')
    blog.posts << Post.new(title: 'Blah', body: 'Some post')
    assert blog.posts.to_a.count == 1
  end
end
