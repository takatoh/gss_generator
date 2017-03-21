# encoding: utf-8

require "gss/polar_point"


module GSS

  class GSS
    def generate(r, n)
      theta_1 = Math::PI
      phi_1 = 0.0

      points = []
      points << PolarPoint.new(r, theta_1, phi_1)
      2.upto(n) do |k|
        h_k = -1.0 + 2.0 * (k - 1) / (n - 1)
        theta_k = Math.acos(h_k)
        phi_k = points.last.phi + 3.6 / Math.sqrt(n) * 1 / Math.sqrt(1 - h_k ** 2)
        phi_k = phi_k.infinite? ? 0.0 : phi_k % (Math::PI * 2.0)
        points << PolarPoint.new(r, theta_k, phi_k) 
      end

      points
    end
  end   # of class GSS

end   # of module GSS
