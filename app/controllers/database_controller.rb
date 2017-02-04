class DatabaseController < ApplicationController


  def directors
    @list_of_directors =
    render("directors.html.erb")
  end
end
