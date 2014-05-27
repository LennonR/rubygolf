class Golf

  def self.hole3(i)
    (1..i).inject { |i,x| i*x }
  end

end
