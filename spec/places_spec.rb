require('rspec')
require('places')
require('pry')

describe(Places) do
  before() do
    Places.clear()
  end

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

  describe("#save") do
    it ("adds a place to the array") do
      test_place = Places.new("Miami")
      test_place.save()
      expect(Places.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties out all saved places") do
      Places.new("Miami").save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end
end
