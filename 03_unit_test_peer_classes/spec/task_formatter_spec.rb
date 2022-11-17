require "task_formatter"

RSpec.describe TaskFormatter do 
  it "returns uncompleted task in correct format" do 
    fake_task = double(:task, title: "feed dog", complete?: false)
    task_formatter = TaskFormatter.new(fake_task)
    expect(task_formatter.format).to eq "- [ ] feed dog"
  end
  it "returns completed task in correct format" do 
    fake_task = double(:task, title: "feed dog", complete?: true)
    task_formatter = TaskFormatter.new(fake_task)
    expect(task_formatter.format).to eq "- [x] feed dog"
  end
end 