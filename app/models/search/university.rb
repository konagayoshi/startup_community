class Search::University < Search::Base
  ATTRIBUTES = %i(
    name
    location
    rank
    reputation
  )
  attr_accessor(*ATTRIBUTES)

  def matches
    t = ::University.arel_table
    results = ::University.all
    results = results.where(contains(t[:name], name)) if name.present?
    results = results.where(contains(t[:location], location)) if location.present?
    results = results.where(t[:rank].gteq(rank)) if rank.present?
    results = results.where(t[:reputation].gteq(reputation)) if reputation.present?
    results
  end
end
