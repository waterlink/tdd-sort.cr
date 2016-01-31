module ImmutableSort
  def self.sort(a)
    return a if a.size < 2

    left = [] of Int32
    right = [] of Int32

    a[1..-1].each do |x|
      if a[0] > x
        left << x
      else
        right << x
      end
    end

    sort(left) + [a[0]] + sort(right)
  end
end
