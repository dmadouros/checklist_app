require 'rails_helper'

module Api
  describe 'checklists api', type: :request do
    describe 'get' do
      let(:state) { FactoryBot.create(:state, name: 'Started') }
      let(:checklist) { FactoryBot.create(:checklist, name: 'Saturday', state: state) }
      let(:item) { FactoryBot.create(:item, checklist: checklist) }

      before do
        state
        checklist
        item
      end

      it 'should return presented checklist' do
        get "/api/checklists"

        expect(JSON.parse(response.body)).to eq({
          'id' => checklist.id,
          'name' => 'Saturday',
          'state' => 'Started',
          'items' => [
            {
              'id' => item.id,
              'name' => 'Mow Lawn',
              'completed' => false,
            },
          ],
        })
      end

      it 'should response with status 200' do
        get "/api/checklists"

        expect(response.status).to eq 200
      end
    end
  end
end