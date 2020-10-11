module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :fetch_languages, resolver: Queries::FetchLanguages
    field :fetch_language, resolver: Queries::FetchLanguage
  end
end
