require "./spec_helper"
require "../src/sort"

describe Sort do
  it "sorts" do
    Sort.sort([] of Int32).should eq([] of Int32)
    Sort.sort([1]).should eq([1])
    Sort.sort([1, 2]).should eq([1, 2])
    Sort.sort([2, 1]).should eq([1, 2])

    Sort.sort([1, 2, 3]).should eq([1, 2, 3])
    Sort.sort([2, 1, 3]).should eq([1, 2, 3])
    Sort.sort([1, 3, 2]).should eq([1, 2, 3])
    Sort.sort([3, 2, 1]).should eq([1, 2, 3])

    Sort.sort([1, 2, 3, 4]).should eq([1, 2, 3, 4])
    Sort.sort([2, 1, 3, 4]).should eq([1, 2, 3, 4])
    Sort.sort([3, 1, 2, 4]).should eq([1, 2, 3, 4])
    Sort.sort([3, 4, 2, 1]).should eq([1, 2, 3, 4])

    Sort.sort([3, 5, 4, 2, 1]).should eq([1, 2, 3, 4, 5])
    Sort.sort([5, 4, 3, 2, 1]).should eq([1, 2, 3, 4, 5])

    Sort.sort([98, 1, 10, 80, 85, 65, 16, 96, 52, 40, 71, 79])
      .should eq([1, 10, 16, 40, 52, 65, 71, 79, 80, 85, 96, 98])
  end
end
