class Search::Jobdemand < Search::Base
  ATTRIBUTES = %i(
    title
    overview
  )
  attr_accessor(*ATTRIBUTES)

  def matches
    t = ::Jobdemand.arel_table
    results = ::Jobdemand.all
    results = results.where(contains(t[:title], title)) if title.present?
    results = results.where(contains(t[:overview], overview)) if overview.present?
    results
  end
end
