# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :option_card do
    key_partners false
    key_activities false
    key_resources false
    value_proposition false
    customer_relationships false
    customer_channels false
    customer_segments false
    revenue_streams false
    cost_structure false
    option "MyText"
    tested false
    user_id 1
    project_id 1
  end
end
