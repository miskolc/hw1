class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.000}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
  def in(currency)
    singular_currency = currency.to_s.gsub(/s$/, '')
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    end  
  end  
end

class String
  def palindrome?
    dummy = self.split(/\W/).reject { |e| e.empty? }.join.downcase
    dummy == dummy.reverse
  end  
end


module Enumerable
  def palindrome?
    dummy = []
    self.collect {|j| dummy<< j}
    dummy2 = []
    dummy.reverse_each { |j| dummy2<< j}
    dummy == dummy2
  end  
end  

#module Enumerable
#   def palindrome?
#     dummy = dummy.entries.join.split(/\W/).reject { |e| e.empty? }.join.downcase
#     dummy == dummy.reverse
#   end  
# end

