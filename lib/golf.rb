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

  def self.hole4 i
    i.map do |j|
      if j.start_with? "man"
        "hat("<<j<<")"
      elsif j.start_with? "dog"
        j[0..-2]<<"(bone"<<"))"
      elsif j.start_with? "cat"
        j.sub! "cat", "dead"
      end
    end
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

  def self.hole9(s)
    s.split(" ").map do |w|
      w.length < 11 ? w : w[0..3] + "..." + w[-3..-1]
    end.join(" ")
  end
end
