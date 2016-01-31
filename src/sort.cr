module Sort
  def self.sort(a)
    return a if a.size < 2

    i = 0
    if a.size > i + 1 && a[i] > a[i + 1]
      a[i], a[i + 1] = {a[i + 1], a[i]}
    end

    i = 1
    if a.size > i + 1 && a[i] > a[i + 1]
      a[i], a[i + 1] = {a[i + 1], a[i]}
    end

    a
  end
end
