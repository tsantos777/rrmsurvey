class AddMoreFieldsToQuizResults < ActiveRecord::Migration[7.0]
  def change
    add_column :quiz_results, :phone, :string
    add_column :quiz_results, :email, :string
    add_column :quiz_results, :flightTraining, :text
    add_column :quiz_results, :whyPilot, :text

    add_column :quiz_results, :pastTraining, :string
    add_column :quiz_results, :instructTeach, :text
    add_column :quiz_results, :aviationGoals, :text

    add_column :quiz_results, :preferredDate, :date
    add_column :quiz_results, :alternateDate, :date
    add_column :quiz_results, :preferredTime, :string
    add_column :quiz_results, :alternateTime, :string
    
  end
end
