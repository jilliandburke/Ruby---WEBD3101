# This migration comes from lab2_engine (originally 20160203223644)
class CreateLab2EngineMessages < ActiveRecord::Migration
  def change
    create_table :lab2_engine_messages do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
