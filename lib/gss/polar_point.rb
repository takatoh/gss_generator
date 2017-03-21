# encoding: utf-8


module GSS

  class PolarPoint
    attr_reader :r, :theta, :phi

    def initialize(r, theta, phi)
      @r = r
      @theta = theta
      @phi = phi
    end
  end   # of class PolarPoint

end   # of module GSS
