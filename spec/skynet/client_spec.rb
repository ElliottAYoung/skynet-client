require "spec_helper"

RSpec.describe Skynet::Client do
  it "has a version number" do
    expect(Skynet::Client::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
