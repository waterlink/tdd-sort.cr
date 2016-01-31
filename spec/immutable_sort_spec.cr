require "./spec_helper"
require "../src/immutable_sort"

K = ImmutableSort

describe ImmutableSort do
  it "sorts" do
    K.sort([] of Int32)
  end
end
