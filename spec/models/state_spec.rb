require 'rails_helper'

describe State do
  describe 'validations' do
    let(:state) { FactoryBot.build(:state) }

    it 'should be valid' do
      expect(state).to be_valid
    end

    describe 'errors' do
      it 'should require name' do
        state.name = nil

        expect(state).to_not be_valid
        expect(state.errors.full_messages).to include("Name can't be blank")
      end
    end
  end
end