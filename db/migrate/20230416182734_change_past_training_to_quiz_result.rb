class ChangePastTrainingToQuizResult < ActiveRecord::Migration[7.0]
  def change 
     remove_column :quiz_results, :pastTraining
  end 
end
