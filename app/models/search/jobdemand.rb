class Search::Jobdemand < Search::Base
  ATTRIBUTES = %i(
    title
    overview
    name
  )
  attr_accessor(*ATTRIBUTES)

  def matches
    t1 = ::Jobdemand.arel_table
    t2 = ::Company.arel_table
    results = ::Jobdemand.all.includes(:company)
    results = results.where(contains(t1[:title], title)) if title.present?
    results = results.where(contains(t1[:overview], overview)) if overview.present?

    if name.present?
      results = results.joins(:company).where(contains(t2[:name], name))
    end

    results 

  end
end
