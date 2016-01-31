module ImmutableSort
  def self.sort(a)
    return a if a.size < 2

    left = [] of Int32
    right = [] of Int32
    if a[0] > a[1]
      left << a[1]
      return left + [a[0]] + a[2..-1]
    end

    [a[0]] + sort(a[1..-1])
  end
end
