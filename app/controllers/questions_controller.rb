class QuestionsController < ApplicationController

  QUESTIONS = {
    1 => {category: "I am going to work"},
    2 => {category: "?"},
    3 => {category: ""}
  }
  
  def ask
  end
  
  def answer
    @respuesta = ""
    
    if params["food_type"] == "I am going to work"
      @respuesta << "Great!"
    elsif params["food_type"].last == "?"
      @respuesta << "Silly question, get dressed and go to work!"
      else 
        @respuesta << "I don't care, get dressed and go to work!"
    end
  end
  def home
  end
end
