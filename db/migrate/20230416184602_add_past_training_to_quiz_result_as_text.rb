class AddPastTrainingToQuizResultAsText < ActiveRecord::Migration[7.0]
  def change
      add_column :quiz_results, :pastTraining, :text, array: true, default:[]
  end
end
