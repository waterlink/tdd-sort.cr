module ImmutableSort
  def self.sort(a)
    return a if a.size < 2

    if a[0] > a[1]
      return [a[1], a[0]] + a[2..-1]
    end

    [a[0]] + a[]
  end
end
