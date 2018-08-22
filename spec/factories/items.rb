FactoryBot.define do
  factory :item do
    name { 'Mow Lawn' }
    completed { false }
    checklist
  end
end