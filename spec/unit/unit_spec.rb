# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end


RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter',author: 'JK')
  end

  it 'is valid with author' do
    expect(subject).to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter',price: 10.40)
  end

  it 'is valid with price' do
    expect(subject).to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter',published_date: '2022-02-03')
  end

  it 'is valid with date' do
    expect(subject).to be_valid
  end
end