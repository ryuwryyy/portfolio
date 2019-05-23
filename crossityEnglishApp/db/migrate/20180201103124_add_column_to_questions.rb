class AddColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :when, :string
    add_column :questions, :where, :string
    add_column :questions, :what, :string
    add_column :questions, :how_much, :string
  end
end
