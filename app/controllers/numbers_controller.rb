class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end 


  def losers
    @res = Array.new

    5.times do
      cur = rand(1...100)
      @res.push(cur)
    end

    render({ :template => "lottery_stuff/unlucky.html.erb"})
  end
end
