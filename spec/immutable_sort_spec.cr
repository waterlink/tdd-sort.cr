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
    K.sort([1, 3, 2]).should eq([1, 2, 3])
    K.sort([3, 2, 1]).should eq([1, 2, 3])
    K.sort([3, 1, 2]).should eq([1, 2, 3])
    K.sort([2, 3, 1]).should eq([1, 2, 3])

    K.sort([98, 1, 10, 80, 85, 65, 16, 96, 52, 40, 71, 79])
      .should eq([1, 10, 16, 40, 52, 65, 71, 79, 80, 85, 96, 98])
  end
end
