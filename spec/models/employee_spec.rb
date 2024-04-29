require 'rails_helper'

RSpec.describe Employee, type: :model do
  describe "associations" do
    it { should belong_to(:department).optional }
    it { should have_many(:assignments) }
    it { should have_many(:projects).through(:assignments) }
  end

  describe "validations" do
    subject { build(:employee) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end
end
