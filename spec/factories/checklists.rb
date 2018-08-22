FactoryBot.define do
  factory :checklist do
    name { 'Saturday' }
    association :state, factory: :state_started
  end
end