FactoryBot.define do
  factory :state do
    name { 'Unknown' }

    factory :state_started do
      name { 'Started' }
    end
  end
end