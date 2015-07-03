require "spec_helper"

describe Lita::Handlers::Lunch, lita_handler: true do
  it { is_expected.to route_command('lunch me').to(:lunch) }
  it { is_expected.to route_command('lunch').to(:lunch) }

  it 'replies' do
    send_command('lunch')
    expect(Lita::Handlers::Lunch::FINE_ESTABLISHMENTS).to include(replies.last)
  end
end
