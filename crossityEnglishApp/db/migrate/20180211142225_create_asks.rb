class CreateAsks < ActiveRecord::Migration
  def change
    create_table :asks do |t|

      t.timestamps null: false
      t.text :text
      t.integer :user_id
      t.integer :question_id
    end
  end
end
