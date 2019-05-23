class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|

      t.integer :user_id
      t.integer :question_id
      t.timestamps null: false
    end
  end
end
