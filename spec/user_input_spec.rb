require 'stringio'

  TEST_AMOUNT = 100
  
def capture_amount
  $stdin.gets.chomp
end

describe 'capture_amount' do
  before do
    $stdin = StringIO.new("#{TEST_AMOUNT}\n")
  end

  after do
    $stdin = STDIN
  end

  it "should be 100" do
    expect(capture_amount).to be == "#{TEST_AMOUNT}"
  end
end
