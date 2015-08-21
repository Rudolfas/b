class BLogedController < ApplicationController
  def wall
    @title="Wall"
  end

  def player
    @title="Player"
  end

  def investor
    @title="Investor"
  end

  def my_account
    @title="My account"
  end

  def cashier
    @title="Cashier"
  end

  def support
    @title="Support"
  end

  def events
    @title="Events"
  end
end
