class Airport

  STORMY_PERCENTAGE = 70

  def stormy?
    rand(1..100) < STORMY_PERCENTAGE
  end

  def land_plane!(plane)
    plane.land!
  end

  def launch_plane!(plane)
    plane.take_off! unless stormy?
  end

end