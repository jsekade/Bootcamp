
class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize content, completed=false
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = completed
        @created_at = Time.now
        @updated_at = nil
    end
    def complete?
      @completed
    end
    def complete!
      @completed = true
    end
    def make_incomplete!
      @completed = false
    end
    def content
      @content
    end
    def update_content! update_content
      @content.replace update_content
      @updated_at = Time.now
    end
end
class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end
    def add_task task
      @tasks << task
    end
    def delete_task task_id
      @tasks.delete_if {|task| task.id == task_id}
    end
    def find_task_by_id task_id
      @tasks.find {|task| task.id == task_id}
    end
    def sort_by_created
      sort_tasks = @tasks.sort {|task1, task2| task1.created_at <=> task2.created_at}
      puts sort_tasks
    end
end
todo_list = TodoList.new
task = Task.new("Buy the milk")
task2 = Task.new("Walk the dog")
task3 = Task.new("Buy the bread")
todo_list.add_task task
todo_list.add_task task2
todo_list.add_task task3
# todo_list.delete_task(1)
# task = todo_list.find_task_by_id(1)
# puts task.content

# task = Task.new("Buy the milk")
# puts task.complete?
# puts task.complete!

# puts task.content
# Buy the dog

# puts task2.content
# Walk the milk
# task.update_content!("Buy the milk")
# task2.update_content!("Walk the dog")
# puts task.content
# Buy the milk
# puts task2.content
# Walk the dog
