class AddNameToQuizResults < ActiveRecord::Migration[7.0]
  def change
    add_column :quiz_results, :name, :string
  end
end
