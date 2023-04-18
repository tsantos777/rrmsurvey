class QuizController < ApplicationController
  def index
    @quiz_results = QuizResult.all
  end

  def about
  end
end
