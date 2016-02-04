# This migration comes from lab2_engine (originally 20160203224844)
class CreateLab2EngineComments < ActiveRecord::Migration
  def change
    create_table :lab2_engine_comments do |t|
      t.integer :article_id
      t.text :text

      t.timestamps null: false
    end
  end
end
