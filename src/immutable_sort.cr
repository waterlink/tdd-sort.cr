module ImmutableSort
  def self.sort(a)
    return a if a.size < 2

    left = [] of Int32
    right = [] of Int32

    i = 1
    if a.size > i
      if a[0] > a[i]
        left << a[i]
      else
        right << a[i]
      end
    end

    i = 2
    if a.size > i
      if a[0] > a[i]
        left << a[i]
      else
        right << a[i]
      end
    end

    sort(left) + [a[0]] + sort(right)
  end
end
