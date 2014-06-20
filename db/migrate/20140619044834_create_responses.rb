class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :description
      t.text :next_steps
      t.references :topic, index: true

      t.timestamps
    end
  end
end
