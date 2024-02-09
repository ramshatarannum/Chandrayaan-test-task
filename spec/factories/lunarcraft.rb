# spec/factories/spacecraft.rb
FactoryBot.define do
  factory :lunarcraft do
    x { 1 }
    y { 2 }
    z { 3 }
    direction { 'north' }
  end
end