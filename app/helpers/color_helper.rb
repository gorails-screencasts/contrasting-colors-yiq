module ColorHelper
  def contrast_color(hex)
    red, green, blue = hex.scan(/../).map{ |c| c.to_i(16) }
    yiq = ((red * 299) + (green * 587) + (blue * 114)) / 1000
    yiq > 128 ? "black" : "white"
  end
end
