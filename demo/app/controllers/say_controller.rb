class SayController < ApplicationController

  def hello
    @time = Time.now
  end

  def goodbye
  end

  @files = Dir.glob('*')

end
