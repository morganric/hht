class CreateOptionCards < ActiveRecord::Migration
  def change
    create_table :option_cards do |t|
      t.boolean :key_partners
      t.boolean :key_activities
      t.boolean :key_resources
      t.boolean :value_proposition
      t.boolean :customer_relationships
      t.boolean :customer_channels
      t.boolean :customer_segments
      t.boolean :revenue_streams
      t.boolean :cost_structure
      t.text :option
      t.boolean :tested
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
