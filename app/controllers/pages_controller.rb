class PagesController < ApplicationController
  def region
    base_region = "Montreal"
    if @region.nil?
      base_region
    else
      "#{@region}"
    end
  end
  def home
    @title = "Attente dans les urgences - Information Temps d'attente"
    
  end

  def contact
    @title = "Notre Equipe - L'attente, c'est notre mission"
  end

  def login
    @title = "Information sur l'attente dans les urgences du Canada"
  end
end
