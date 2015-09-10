require_relative "image_blur"
require "test/unit"

class TestImageBlur < Test::Unit::TestCase

  def test_blur
    image = Image.new([
      [0, 0, 0, 0, 0],
      [0, 1, 0, 0, 1],
      [0, 0, 0, 1, 0],
      [0, 0, 0, 0, 1]
    ])
    expected_image = Image.new([
      [0, 1, 0, 0, 1],
      [1, 1, 1, 1, 1],
      [0, 1, 1, 1, 1],
      [0, 0, 0, 1, 1]
    ])

    image.blur
    assert_equal(expected_image, image)
  end

end
