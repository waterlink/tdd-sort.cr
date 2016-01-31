require "./spec_helper"
require "../src/immutable_sort"

class K
  extend ImmutableSort
end

describe ImmutableSort do
  it "sorts" do
    K.sort([] of Int32)
  end
end
