class StaticController < ApplicationController
  def rickroll
    redirect_to('https://www.youtube.com/watch?v=dQw4w9WgXcQ')
  end
end
