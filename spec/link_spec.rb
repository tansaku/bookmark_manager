require 'link'

describe Link do
  it 'can be created and then retrieved' do
    expect(described_class.count).to eq 0
    described_class.create title: 'Makers Academy',
                           url: 'http://makersacademy.com'
    expect(described_class.count).to eq 1

    link = described_class.first
    expect(link.url).to eq 'http://makersacademy.com'
    expect(link.title).to eq 'Makers Academy'

    link.destroy
    expect(described_class.count).to eq 0
  end
end