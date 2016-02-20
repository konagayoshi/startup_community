class Search::Student < Search::Base
  ATTRIBUTES = %i(
    name
    university
    major
    achievement
    hope
  )
  attr_accessor(*ATTRIBUTES)

  def matches
    t = ::Student.arel_table
    results = ::Student.all
    results = results.where(contains(t[:name], name)) if name.present?
    results = results.where(contains(t[:university], university)) if university.present?
    results = results.where(contains(t[:major], major)) if major.present?
    results = results.where(contains(t[:achievement], achievement)) if achievement.present?
    results = results.where(contains(t[:hope], hope)) if hope.present?
    results
  end
end
