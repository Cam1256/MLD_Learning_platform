class HomeController < ApplicationController
  def index
  end

  def about
  end

  def try
  end

  def Contact
  end

  def learn
    @answer = `python lib/assets/python/prueba.py`

    @tonces = `cpp lib/assets/c++/First/First/main.cpp`



  end

  def services
  end


end
