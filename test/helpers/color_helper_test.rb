require "test_helper"

class ColorHelperTest < ActionView::TestCase
  test "light background has black contrast" do
    %w{ ffcc00 ccff00 00ccff ff6600 cc6666 }.each do |hex|
      assert_equal "black", contrast_color(hex)
    end
  end

  test "dark background has white contrast" do
    %w{ ff0066 006666 0099cc 666600 cc00cc }.each do |hex|
      assert_equal "white", contrast_color(hex)
    end
  end
end
