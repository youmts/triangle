require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.what_kind_of(0, 1, 1)).to eq :not}
  specify { expect(Triangle.what_kind_of(1, 0, 1)).to eq :not}
  specify { expect(Triangle.what_kind_of(1, 1, 0)).to eq :not}

  specify { expect(Triangle.what_kind_of(2, 3, 4)).to eq :normal}
  specify { expect(Triangle.what_kind_of(2, 2, 1)).to eq :isosceles}
  specify { expect(Triangle.what_kind_of(1, 1, 1)).to eq :equilateral}
  specify { expect(Triangle.what_kind_of(1, 2, 3)).to eq :not}
end