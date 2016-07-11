class Task
    attr_reader :content, :id, :date
    @@current_id = 1
    def initialize(content, complete =false)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = complete
        @date = Time.now
    end

    def complete!
      @complete = true
    end

    def complete?
      @complete
    end

    def make_incomplete!
      @complete = false
    end

    def created_at
      @date
    end

    def update_content (updated_content)
      @content = updated_content
    end
end

class Todo
  attr_accessor :list
  def initialize
    @list = []

  end

  def add_tasks (task)
    @list.push(task)
  end

  def find_task_by_id (id)
    @list[id.to_i].content
  end

  def sort_by_created
    sorted_tasks = @list.sort { | task1, task2 | task1.date <=> task2.date }
  end

end

task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id

list= Todo.new
list.add_tasks(task)
list.add_tasks(task2)
