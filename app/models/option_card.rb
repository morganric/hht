class OptionCard < ActiveRecord::Base
  attr_accessible :cost_structure, :customer_channels, :customer_relationships, :customer_segments, :key_activities, :key_partners, :key_resources, :option, :project_id, :revenue_streams, :tested, :user_id, :value_proposition

  belongs_to :user
  belongs_to :project


end
