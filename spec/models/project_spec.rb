require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "associations" do
    it { should have_many(:assignments) }
    it { should have_many(:employees).through(:assignments) }

    describe "validations" do
      it { should validate_presence_of(:title) }
    end
  end
end
