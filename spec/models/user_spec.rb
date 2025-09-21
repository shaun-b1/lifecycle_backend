require "rails_helper"

RSpec.describe User, type: :model do
  it "is a class" do
    expect(defined?(User)).to be_truthy
    expect(User).to be_a(Class)
  end
end