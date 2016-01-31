module Sort
  def self.sort(a)
    return a if a.size < 2

    i = 0
    while a.size > i + 1
      if a[i] > a[i + 1]
        a[i], a[i + 1] = {a[i + 1], a[i]}
      end
      i += 1
    end

    i = 0
    while a.size > i + 1
      if a[i] > a[i + 1]
        a[i], a[i + 1] = {a[i + 1], a[i]}
      end
      i += 1
    end

    a
  end
end
