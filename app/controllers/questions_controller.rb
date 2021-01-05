class QuestionsController < ApplicationController
  def ask
  end

  def answer
    search = params[:ask]

    @answer = if search == 'I am going to work'
                'Great!'
              elsif search.include? '?'
                'Silly question, get dressed and go to work!'
              else
                'I dont care, get dressed and go to work!'
              end
  end
end
