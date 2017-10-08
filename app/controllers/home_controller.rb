class HomeController < ApplicationController
  def enter
    render :layout => false
  end

  def index
    fname = "test_file.txt"
    file = File.open(fname, "w")
    file.puts("hello, world")
    file.close
  end

  def missions
  end

  def faq
  end

  def about_us
  end

  def contact
  end

  def stories
  end

  def designs
  end

  def join_us
  end

end
