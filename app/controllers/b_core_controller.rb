class BCoreController < ApplicationController
  def index
  	@title="Home"
  end

  def pl
  	@title="Players"
  end

  def inv
  	@title="Investors"
  end

  def ab
  	@title="About Us"
  end
end
