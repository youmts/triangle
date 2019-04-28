require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.what_kind_of(2, 3, 4)).to eq '不等辺三角形ですね！'}
end