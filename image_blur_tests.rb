require_relative "image_blur"
require "minitest/autorun"

class TestImageBlur < Minitest::Test

  def test_blur
    image = Image.new([
      [0, 0, 0, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0],
      [0, 0, 0, 0]
    ])
    expected_image = Image.new([
      [0, 1, 0, 0],
      [1, 1, 1, 0],
      [0, 1, 0, 0],
      [0, 0, 0, 0]
    ])
    assert_equal(expected_image, image.blur)
  end

end
