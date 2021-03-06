require 'test_helper'

class TwitterTest < ActionView::TestCase
  include Metamagic::ViewHelper

  test "twitter tag" do
    meta title: "Test Title",
         twitter: {
           card: :summary,
         }
    twitter site: "@flickr"


    assert_equal %{<title>Test Title</title>\n<meta content="summary" property="twitter:card" />\n<meta content="@flickr" property="twitter:site" />},
                 metamagic
  end
end