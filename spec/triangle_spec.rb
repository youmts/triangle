require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify "いずれかの辺が0" do
    [0, 1, 1].combination(3) { |sides|
      expect(Triangle.what_kind_of(*sides)).to eq :not
    }
  end

  specify "2+2+2の正三角形" do
    expect(Triangle.what_kind_of(2, 2, 2)).to eq :equilateral
  end

  specify "2+2+3の二等辺三角形" do
    [2,2,3].combination(3) {|sides|
      expect(Triangle.what_kind_of(*sides)).to eq :isosceles
    }
  end

  specify "2+2+4の非三角形" do
    [2,2,4].combination(3) {|sides|
      expect(Triangle.what_kind_of(*sides)).to eq :not
    }
  end

  specify "2+3+4の三角形" do
    [2,3,4].combination(3) {|sides|
      expect(Triangle.what_kind_of(*sides)).to eq :normal
    }
  end
end