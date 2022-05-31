FactoryBot.define do
  factory :greeting, class: 'Greeting' do
    message { FFaker::Lorem.word }
  end
end
