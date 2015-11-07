class JobdemandController < ApplicationController
  def jdlist
    @jobdemand = Jobdemand.select("title, overview, education")
  end

  def jddetail
  end
  
  def new
    @jobdemand = Jobdemand.new();
  end
end
