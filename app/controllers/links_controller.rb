class LinksController < ApplicationController
  def search
    Link.redirection
    short_link = 'localhost:3000/' + params[:shortlink]
    redirection
  end
end
