class CreateChoiceUsers < ActiveRecord::Migration
  def change
    create_table :choice_users do |t|
      t.references :choice
      t.references :user
    end
  end
end
