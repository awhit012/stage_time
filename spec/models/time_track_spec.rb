require 'spec_helper'

describe TimeTrack do
  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @timetrack = TimeTrack.new(content: 0, user_id: user.id)
  end

  subject { @timetrack }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when user_id is not present" do
    before { @timetrack.user_id = nil }
    it { should_not be_valid }
  end
end
