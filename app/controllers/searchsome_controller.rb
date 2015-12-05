require 'ransack'

class SearchsomeController < ApplicationController
  def searchtoplist

    @q = Jobdemand.search(params[:search])

  end

  def searchdetail
 
  end

 private

  def search_params
    search_conditions = %i(
      title_cont overview_cont
    )
    params.require(:q).permit(search_conditions)
  end

end
