require "./spec_helper"
require "../src/immutable_sort"

K = ImmutableSort

describe ImmutableSort do
  it "sorts" do
    K.sort([] of Int32).should eq([] of Int32)
    K.sort([1]).should eq([1])
  end
end
