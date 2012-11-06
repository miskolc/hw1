class CartesianProduct
  include Enumerable

  def initialize ( first, second)
    @first, @second = first, second
  end
  
  def each
    return self.to_enum unless block_given?
    @first.each do |f|
        @second.each do |s|
            yield [f,s]
        end    
    end    
  end  

end
