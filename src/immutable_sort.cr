module ImmutableSort
  def self.sort(a)
    if a[0] > a[1]
      return [a[1], a[0]]
    end
  end
end
