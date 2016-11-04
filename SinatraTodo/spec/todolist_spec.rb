require_relative "../todolist"
require "spec_helper"

describe "todolist" do
  it "complete? gives false" do
    expect(Task.new("Buy the milk").complete?).to be false
  end
  it "complete! gives true" do
    expect(Task.new("Buy the milk").complete!).to be true
  end
  it "make_incomplete! gives false" do
    expect(Task.new("Buy the milk").make_incomplete!).to be false
  end
  it "update_content! mod string" do
    task = Task.new("Buy the dog")
    task.update_content!("Buy the milk")
    expect(task.content).to eq("Buy the milk")
  end
  it "delete task for id" do
    

  end

end
