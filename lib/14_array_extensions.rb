class Array
def sum
   self.empty? ? 0 : self.reduce{|a,b| a+b }
end

def square
  self.empty? ? self : self.map{|a| a*a}
end
def square!
  self.empty? ? self : self.map!{|a| a*a}
end


end
