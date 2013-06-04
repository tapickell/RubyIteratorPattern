class Iterator 
  attr_accessor :subtasks

  def initialize
    @subtasks = []
  end

  def add_sub_task(task)
    @subtasks << task
  end

  def remove_sub_task(task)
    @subtasks.delete(task)
  end

  def <<(task)
    add_sub_task(task)
  end

	def each
		@subtasks.each do |i|
			yield(i)
		end
	end
end

