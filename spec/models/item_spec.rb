require 'rails_helper'

describe Item do
  describe 'validations' do
    let(:item) { FactoryBot.build(:item) }

    it 'should be valid' do
      expect(item).to be_valid
    end

    describe 'errors' do
      it 'should require name' do
        item.name = nil

        expect(item).to_not be_valid
        expect(item.errors.full_messages).to include("Name can't be blank")
      end

      it 'should require checklist' do
        item.checklist = nil

        expect(item).to_not be_valid
        expect(item.errors.full_messages).to include("Checklist can't be blank")
      end
    end
  end
end