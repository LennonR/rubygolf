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
  
  def self.hole5 a
    x = []
    a.each do |i|
      a.each_with_index do |n,i|
        x << [n]
        x << [n, a[i+1]] if i < 3
        x << [n, a[i+1], a[i+2]] if i < 2
      end
    end
    x << a
    x.uniq.sort_by {|m| [m.length, m]}
  end

end
