require 'rails_helper'

RSpec.describe Server, type: :model do

  it { should belong_to(:user) }

  it "is not valid without a server_name"
  it "is not valid without a ip_address"
  it "is not valid without a operating_system"
end
