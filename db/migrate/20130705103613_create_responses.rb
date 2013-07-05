class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :question
      t.integer :user_id, default: 0 
      t.integer :counter, default: 0
      t.string :answer
    end
    add_index :responses, [:user_id, :question_id], unique: true
  end
end
