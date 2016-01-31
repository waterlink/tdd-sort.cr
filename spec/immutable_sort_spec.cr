require "./spec_helper"
require "../src/immutable_sort"

K = ImmutableSort

describe ImmutableSort do
  it "sorts" do
    K.sort([] of Int32).should eq([] of Int32)
    K.sort([1]).should eq([1])
    K.sort([1, 2]).should eq([1, 2])
    K.sort([2, 1]).should eq([1, 2])

    K.sort([1, 2, 3]).should eq([1, 2, 3])
    K.sort([2, 1, 3]).should eq([1, 2, 3])
  end
end
