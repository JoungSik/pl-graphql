module Queries
  class FetchLanguages < Queries::BaseQuery
    type [Types::LanguageType], null: false

    def resolve
      Language.all
    end
  end
end
