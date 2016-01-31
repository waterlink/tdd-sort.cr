module ImmutableSort
  def self.sort(a)
    return a if a.size < 2

    left = [] of Int32
    right = a[1..-1]
    if a[0] > a[1]
      left << a[1]
      right = a[2..-1]
    end

    left + [a[0]] + right
  end
end
