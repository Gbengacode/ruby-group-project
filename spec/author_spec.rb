require './classes/author'

require 'yaml'

describe Author do
  before :each do
    @author = Author.new 'Victor', 'Lemba'
  end

  it '@author should be an instance of Author class' do
    expect(@author).to be_an_instance_of Author
  end

  it 'author first name to be "Victor"' do
    @first_name == 'Victor'
  end

  it 'author last name to be "Lemba"' do
    @last_name == 'Lemba'
  end
end
