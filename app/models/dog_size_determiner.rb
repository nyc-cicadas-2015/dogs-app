class DogSizeDeterminer
  def initialize(neckable)
    @thing_with_a_neck = neckable
  end

  def collar_size
    # You could code some if else logic here...based on @thing_with_a_neck
    if @thing_with_a_neck.breed =~ /east/i
      "frilly"
    else
      "small"
    end
  end
end
