require 'rails_helper'

RSpec.describe Department, type: :model do
  describe "associations" do
    it { should have_many(:employees).dependent(:destroy) }
  end

  describe "validations" do
    subject { FactoryBot.build(:department) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe "callbacks" do
    describe "before_destroy" do
      let!(:department) { create(:department) }

      context "when department has no employees" do
        it "does not raise an error" do
          expect { department.destroy }.to change { Department.count }.by(-1)
        end
      end

      context "when department has employees" do
        before { create(:employee, department: department) }

        it "adds an error to base" do
          department.destroy
          expect(department.errors[:base]).to include("You can't delete the department because it has employees")
        end

        it "does not destroy the department" do
          expect { department.destroy }.not_to change { Department.count }
        end
      end
    end
  end
end

