FactoryGirl.define do
  factory :employee do |e|
    e.first_name "John"
    e.last_name "Doe"
    e.birth_date "01/01/2000"
    e.gender "M"
    e.hire_date "01/01/2000"
  end
end