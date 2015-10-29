class JobDemandController < ApplicationController
  def list
    @jobdemand = JobDemand.select("title, overview")
  end

  def detail
  end
end
