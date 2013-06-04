require "iterator.rb"

describe Iterator do

	before(:each) do
		@iterator =  Iterator.new
	end

	it "should respond to each method call" do
		@iterator.should respond_to(:each)
	end

	describe "each" do
		it "should yield to a block" do
			@iterator << :yld
			@iterator.each do |i|
				i.should == :yld
			end
		end

		it "should yeild multiple objects to block" do
			@iterator << 1
			@iterator << 2
			@iterator << 3
			@iterator << 4
			@total = 0
			@iterator.each do |i|
				@total += i
			end
			@total.should == 10
		end
	end

  describe "<<" do
    before(:each) do
      @iterator << :task
    end

    it "should add a task to the subtasks" do
      @iterator.subtasks.should == [:task]
    end
	end
end
