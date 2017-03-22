# encoding: utf-8


module GSS

  class PolarPoint
    attr_reader :theta, :phi

    def initialize(theta, phi)
      @theta = theta
      @phi = phi
    end

    def to_cartesian
      x = Math.sin(@theta) * Math.cos(@phi)
      y = Math.sin(@theta) * Math.sin(@phi)
      z = Math.cos(@theta)
      [x, y, z]
    end

    def self.from_cartesian(x, y, z)
      theta = Math.acos(z / Math.sqrt(x * x + y * y + z * z))
      phi = Math.atan2(y, x)
      self.new(theta, phi)
    end
  end   # of class PolarPoint

end   # of module GSS
