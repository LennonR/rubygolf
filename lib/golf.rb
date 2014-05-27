class Golf
  def self.hole1 x
    x.reduce(&:*)
  end

  def self.hole3(i)
    (1..i).inject &:*
  end

  def self.hole6(i)
    (1..i).collect do |i|
      if i % 15 == 0
        "fizzbuzz"
      elsif i % 3 == 0
        "fizz"
      elsif i % 5 == 0
        "buzz"
      else
        i
      end
    end
  end
end
