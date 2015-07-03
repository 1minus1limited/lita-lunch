require "spec_helper"

describe Lita::Handlers::Lunch, lita_handler: true do
  it { is_expected.to route_command('lunch me').to(:lunch) }
  it { is_expected.to route_command('lunch').to(:lunch) }

  it 'replies' do
    send_command('lunch')
    reply = replies.last
    expect(reply).to match("This week, it'll be")
    expect(Lita::Handlers::Lunch::FINE_ESTABLISHMENTS).to include(reply[20..reply.length])
  end
end
