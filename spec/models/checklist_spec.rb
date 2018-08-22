require 'rails_helper'

describe Checklist do
  describe 'validations' do
    let(:checklist) { FactoryBot.build(:checklist) }

    it 'should be valid' do
      expect(checklist).to be_valid
    end

    describe 'errors' do
      it 'should require name' do
        checklist.name = nil

        expect(checklist).to_not be_valid
        expect(checklist.errors.full_messages).to include("Name can't be blank")
      end

      it 'should require state' do
        checklist.state = nil

        expect(checklist).to_not be_valid
        expect(checklist.errors.full_messages).to include("State can't be blank")
      end
    end
  end
end