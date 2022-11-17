require "task"
require "task_formatter"

RSpec.describe "integration" do 
  context "uncompleted tasks" do 
    it "returns formatted task" do 
      task = Task.new("feed dog")
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [ ] feed dog"
    end 
  end 
  context "completed task" do 
    it "returns formatted task" do 
      task = Task.new("feed dog")
      task.mark_complete
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [x] feed dog"
    end 
  end 
end 