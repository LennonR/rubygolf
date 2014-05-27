class Golf

  def self.hole1 x
    x.reduce(&:*)
  end
  
  def self.hole2
    ('a'..'z').to_a
  end

  def self.hole3(i)
    (1..i).inject &:*
  end

end
