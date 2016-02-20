class Search::Scholarship < Search::Base
  ATTRIBUTES = %i(
    title
    sponsor
    award
  )
  attr_accessor(*ATTRIBUTES) 

  def matches
    t = ::Scholarship.arel_table
    results = ::Scholarship.all.includes(:university)
    results = results.where(contains(t[:title], title)) if title.present?
    results = results.where(contains(t[:sponsor], sponsor)) if sponsor.present?
    results = results.where(t[:award].gteq(award))if award.present?
    results

  end
end
