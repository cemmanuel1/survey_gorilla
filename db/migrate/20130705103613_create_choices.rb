class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :question
      t.string :answer
    end
  end
end
