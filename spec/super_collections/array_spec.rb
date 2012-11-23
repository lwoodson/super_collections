require File.join(File.dirname(__FILE__), '..', 'spec_helper')
require 'super_array'

describe Array do
  context "tupelize" do
    context "tupelize()" do
      it "should convert [1,2,3,4] to [[1,2],[3,4]]" do
        [1,2,3,4].tupelize.should  == [[1,2],[3,4]]
      end

      it "should convert [1,2,3] to [[1,2],[3,nil]]" do
        [1,2,3].tupelize.should == [[1,2],[3,nil]] 
      end
    end


    context "tupelize(3)" do
      it "should convert [1,2,3,4,5,6] to [[1,2,3],[4,5,6]]" do
        [1,2,3,4,5,6].tupelize(3).should == [[1,2,3],[4,5,6]] 
      end

      it "should convert [1,2,3,4] to [[1,2,3],[4,nil,nil]" do
        [1,2,3,4].tupelize(3).should == [[1,2,3],[4,nil,nil]]
      end
    end

    context "tupelize(2, 0)" do
      it "should convert [1,2,3,4] to [[1,2],3,[4]]" do
        [1,2,3,4].tupelize(2,1).should == [[1,2],[3,4]]
      end

      it "should convert [1,2,3] to [[1,2],[3,0]]" do
        [1,2,3].tupelize(2,0).should == [[1,2],[3,0]]
      end
    end

    context "tupelize(3,0)" do
      it "should convert [1,2,3,4,5,6] to [[1,2,3],[4,5,6]]" do
        [1,2,3,4,5,6].tupelize(3,0).should == [[1,2,3],[4,5,6]]
      end

      it "should convert [1,2,3,4] to [[1,2,3],[4,0,0]]" do
        [1,2,3,4].tupelize(3,0).should == [[1,2,3],[4,0,0]]
      end
    end
  end
end
