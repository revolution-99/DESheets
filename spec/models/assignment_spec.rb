require 'rails_helper'

RSpec.describe Assignment, type: :model do
  describe "associations" do
    it { should belong_to(:employee) }
    it { should belong_to(:project) }
  end
end
