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
          x.length < 2 ? false : x[1] != a[a.index(x[0]) + 1] || x[-1] != a[a.index(x[-2]) + 1]
        }.uniq
      }
      r
    end

    def hole6(i)
      a = Array.new(i) {|i|
        i += 1
        if i % 3 == 0 && i % 5 == 0
          "fizzbuzz"
        elsif i % 3 == 0
          "fizz"
        elsif i % 5 == 0
          "buzz"
        else
          i
        end
      }
    end

    def hole7(a)
      r = []
      loop {
        break if a.empty?
        
        l = a.length - 1
        
        if l >= 0 and (a[0] + 3) >= a[l]
          p = a.slice!(0..1)
          puts a * ','
          puts p * ','
          puts '==='
          r << "#{p[0]}-#{p[-1]}"
        else
          r << a.pop
        end
      }
      r
    end
  end
end
