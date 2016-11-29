class Parcel
  define_method(:initialize) do |side1, side2, side3, weight|
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @weight = weight
  end

  define_method(:volume) do
    @side1 * @side2 * @side3
  end

  define_method(:cost_to_ship) do |distance, speed|
    counter = 0
    distance_minus_thousands = distance
    cost = 1

    if self.volume > 13824
    cost += 5
    end

    until distance_minus_thousands <=1000
      distance_minus_thousands -= 1000
      counter += 1
    end
    if speed > 1 && speed <= 2
      cost += 20
    elsif speed > 2 && speed <=5
      cost += 10
    else speed > 5
      cost += 6
    end

    cost += 2 * @weight + 5 * counter

  end
end
