class Golf

  class << self
    
    def hole1(a)
      r = 1
      a.each {|x| r *= x}
      r
    end
    
    def hole2(s)
      s.split(' ').sort {|x, y| x[1] <=> y[1]} * ' '
    end
    
    def hole3(i)
      r = 1
      i.downto(1) {|d| r *= d}
      r
    end
    
    def hole4(a)
      a.collect {|x| x.gsub("cat", "dead").gsub(/(man\(.*\))/, "hat(\\1)").gsub(/(dog\(.*)\)/, "\\1(bone))")}
    end
    
    def hole5(a)
      r = []
      a.length.times {|c|
        r += a.permutation(c+1).to_a.collect{|x| x.sort}.reject{|x| 
          x.length < 2 ? false : x[1] != x[0].succ || x[-1] != x[-2].succ
        }.uniq
      }
      r
    end
  end
end
