RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe 'be_within' do
  it { expect(11.5).to be_within(0.5).of(12.0) }
  it { expect(10.0).to be_not_within(0.5).of(12.0) }
  it { expect([11.6, 12.1, 12.4]).to all (be_within(0.5).of(12.0))}
end

# delta 0.5
# 11.5 -  11.6 - 11.7 - 11.8 - 11.9 - 12 - 12.1 - 12.2 - 12.3 - 12.4 - 12.5
