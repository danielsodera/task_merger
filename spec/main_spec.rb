require './lib/main.rb'

describe '#merge' do 
  let(:tasks_1) { [
    { title: "Submit report", due_date: "2025-06-22" },
    { title: "Email client", due_date: "2025-06-23" }
    ] }

  let(:tasks_2) { [
    { title: "Submit report", due_date: "2025-06-22" },
    { title: "Prepare deck", due_date: "2025-06-24" }
    ] }

  let(:output) { merge(tasks_1, tasks_2) }
  it 'checks if output contains no duplicates' do
    
    expected_output = [
      { title: "Submit report", due_date: "2025-06-22" },
      { title: "Email client", due_date: "2025-06-23" },
      { title: "Prepare deck", due_date: "2025-06-24" }
      ]
    expect(output).to eql(expected_output)
  end
  it 'checks if output has the right amount of tasks' do 
    expect(output.size).to eql(3)
  end

  it 'checks if method works when one list of tasks is empty' do 
    tasks_3 = []
    output = merge(tasks_1, tasks_3)

    expect(output).to eql(tasks_1)
  end

end