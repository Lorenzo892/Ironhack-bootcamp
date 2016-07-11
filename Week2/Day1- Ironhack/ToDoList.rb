class Task
    attr_reader :content, :id
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

    def content (updated_content)
      @content = updated_content
    end
end

class Todo
  def initialize
    @list []
  end

  def add_tasks (task)
    @list.push(task)
  end

  def find_task_by_id (id)
    @list[id.to_i].content
  end

end

task = Task.new("Buy the milk")
puts task.id
# 1
task2 = Task.new("Wash the car")
puts task2.id
