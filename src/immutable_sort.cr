module ImmutableSort
  def self.sort(a)
    return a if a.size < 2

    left = [] of Int32
    right = [] of Int32

    i = 1
    while a.size > i
      if a[0] > a[i]
        left << a[i]
      else
        right << a[i]
      end

      i += 1
    end

    sort(left) + [a[0]] + sort(right)
  end
end
