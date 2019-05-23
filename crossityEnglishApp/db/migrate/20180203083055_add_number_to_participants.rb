class AddNumberToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :number, :string
  end
end
