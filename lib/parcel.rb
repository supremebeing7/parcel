class Parcel
  def initialize(height, width, length, weight)
    @height = height
    @width = width
    @length = length
    @weight = weight
    @volume = @height * @width * @length
  end

  def shipping_cost
    @shipping_cost = @volume * @weight
  end
end

