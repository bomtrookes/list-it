ActsAsTaggableOn::Tag.class_eval do
  include PgSearch

  pg_search_scope :search, :against => [:name],
    :using => {
      :tsearch => {
        :prefix => true, :negation => true, :dictionary => 'english'
      }
    }
end
