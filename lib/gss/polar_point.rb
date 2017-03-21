# encoding: utf-8


module GSS

  class PolarPoint
    attr_reader :r, :theta, :phi

    def initialize(r, theta, phi)
      @r = r
      @theta = theta
      @phi = phi
    end

    def to_cartesian
      x = @r * Math.sin(@theta) * Math.cos(@phi)
      y = @r * Math.sin(@theta) * Math.sin(@phi)
      z = @r * Math.cos(@theta)
      [x, y, z]
    end
  end   # of class PolarPoint

end   # of module GSS
