require('rspec')
require('parcel')

describe(Parcel) do
  describe("#volume") do
    it("returns the volume of the parcel") do
      test_parcel = Parcel.new(3, 3, 3, 4)
      expect(test_parcel.volume()).to(eq(27))
    end
  end
end

describe(Parcel) do
  describe("#cost_to_ship") do
    it("returns the cost based on volume and weight") do
      test_parcel = Parcel.new(24, 24, 25, 6)
      expect(test_parcel.cost_to_ship(987, 7)).to(eq(24))
    end

    it("returns the cost based on volume, weight, and distances under 2000") do
      test_parcel = Parcel.new(24, 24, 25, 6)
      expect(test_parcel.cost_to_ship(1999, 7)).to(eq(29))
    end

    it("returns the cost based on volume, weight, and any distance") do
      test_parcel = Parcel.new(24, 24, 25, 6)
      expect(test_parcel.cost_to_ship(4561, 7)).to(eq(44))
    end
    it("returns the cost based on volume, weight, any distance, and speed of delivery") do
      test_parcel = Parcel.new(24, 24, 25, 6)
      expect(test_parcel.cost_to_ship(4561, 4)).to(eq(48))
    end
  end
end
