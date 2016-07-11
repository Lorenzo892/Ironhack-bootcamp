
require 'rspec'
require './Sinatra.rb'

describe Task do
  before(:each) do
    # @subject = Todo.new
    @task1 = Task.new("Buy the milk")
    # @subject.add_tasks(@task1)
  end

  describe '#complete?' do
    #let(:input) { 1 }
    let(:expected_output) { false }
    let(:result) { @task1.complete? }

    it 'returns the state of the task' do
      expect(result).to eq(expected_output)
    end
  end

  describe '#complete!' do
  #let(:input) { 1 }
  let(:expected_output) { true }
  let(:result) { @task1.complete! }
    it 'changes the state of the task' do
      expect(result).to eq(expected_output)
    end
  end

  describe '#make_incomplete!' do
  #let(:input) { 1 }
  let(:expected_output) { false }
  let(:result) { @task1.make_incomplete! }
    it 'changes the state of the task' do
      expect(result).to eq(expected_output)
    end
  end


    describe '#created_at!' do
    #let(:input) { 1 }
    let(:expected_output) { Time.now }
    let(:result) { @task1.created_at }

      it 'returns the date of reation ' do
        expect(result).to eq(expected_output)
      end
    end

      describe '#content' do
        let(:input) { "Updated content" }
        let(:expected_output) { "Updated content"}
        let(:result) { @task1.content(input) }

        it 'returns the updated content ' do
          expect(result).to eq(expected_output)
        end
      end


end

describe Todo do
    before(:each) do
      @subject = Todo.new
      @subject.add_tasks(@task1)
    end

        describe '#find_task_by_id' do
          let(:input) { 0 }
          let(:expected_output) { "Buy the milk"}
          let(:result) { @subject.find_task_by_id(input) }
  end

end
