class PagesController < ApplicationController
def setting
  @letters = [*('A'..'Z')].sample(10)
end

def receive
  @guess = params[:guess].split('')
  @letters = params[:letters]
  if @letters.include?(@guess)
    @good = "Hey cool"
  end
end
end
