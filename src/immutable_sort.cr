module ImmutableSort
  def self.sort(a)
    return a if a.size < 2

    left = [] of Int32
    right = [] of Int32

    if a[0] > a[1]
      left << a[1]
    else
      right << a[1]
    end

    if a.size > 2
      if a[0] > a[2]
        left << a[2]
      else
        right << a[2]
      end
    end

    sort(left) + [a[0]] + sort(right)
  end
end
