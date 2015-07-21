class WelcomeController < ApplicationController

  def index
    @greeting ="Welcome to my rails app!"
  end

  def show
    @name = "#{params[:name]}"
  end

  def lorem
    @type = "#{params[:type]}"
    @output = " "
    if @type = "standard"
      @output = "Morbi imperdiet scelerisque elit, in euismod quam iaculis vel. Ut elit orci, porttitor nec ultricies vitae, congue in dolor. Curabitur sit amet dui semper, luctus augue efficitur, interdum dui. "
    elsif @type = "hipster"
      @output ="Wes Anderson Vice beard tousled, cray lomo XOXO Echo Park drinking vinegar fashion axe. Shabby chic raw denim Tumblr, pork belly 3 wolf moon organic Kickstarter kale chips literally four dollar toast paleo actually tattooed direct trade McSweeney's."
    elsif @type ="samuel"
      @output ="Your bones don't break, mine do. That's clear. Your cells react to bacteria and viruses differently than mine. You don't get sick, I do. That's also clear."
    else
      render plain: "Please try standard, hipster or samuel"
    end
  end
      
end
