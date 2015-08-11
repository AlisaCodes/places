require('rspec')
require('places')
require('pry')

describe(Places) do

  describe("#location") do
    it("enter a location") do
      test_place = Places.new("Miami")
      expect(test_place.get_location()).to(eq("Miami"))
    end
  end

  describe(".all") do
    it("is an empty at first") do
      expect(Places.all()).to(eq([]))
    end
  end
end
