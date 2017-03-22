# encoding: utf-8

require "gss/polar_point"


module GSS

  class Generator
    def generate(n, relocation = false)
      theta_1 = Math::PI
      phi_1 = 0.0

      points = []
      points << PolarPoint.new(theta_1, phi_1)
      2.upto(n) do |k|
        h_k = -1.0 + 2.0 * (k - 1) / (n - 1)
        theta_k = Math.acos(h_k)
        phi_k = points.last.phi + 3.6 / Math.sqrt(n) * 1 / Math.sqrt(1 - h_k ** 2)
        phi_k = phi_k.infinite? ? 0.0 : phi_k % (Math::PI * 2.0)
        points << PolarPoint.new(theta_k, phi_k) 
      end

      if relocation
        points[0] = relocate(points[1], points[2], points[4], points[5], points[6])
        points[-1] = relocate(points[-2], points[-3], points[-5], points[-6], points[-7])
      end

      points
    end

    private

      def relocate(p1, p2, p3, p4, p5)
        c = [p1, p2, p3, p4, p5].map{|p| p.to_cartesian }
        c = c.transpose.map{|l| l.inject(&:+) / 5.0 }
        PolarPoint.from_cartesian(c[0], c[1], c[2])
      end

  end   # of class Generator

end   # of module GSS
