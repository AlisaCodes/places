class Places
  @@all_places = []
  
  define_method(:initialize) do |input|
    @location = input
  end

  define_method(:get_location) do
    @location
  end

  define_singleton_method(:all) do
    @@all_places
  end

end
