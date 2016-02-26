class Search::Company < Search::Base
  ATTRIBUTES = %i(
    name
    industry
    location
  )
  attr_accessor(*ATTRIBUTES)

  def matches
    t = ::Company.arel_table
    results = ::Company.all
    results = results.where(contains(t[:name], name)) if name.present?
    results = results.where(contains(t[:industry], industry)) if industry.present?
    results = results.where(contains(t[:location], location)) if location.present?
    results
  end
end
