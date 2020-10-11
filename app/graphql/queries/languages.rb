module Queries
  class Languages < Queries::BaseQuery
    description "list all languages"

    type Types::Models::LanguageType.connection_type, null: false

    def resolve
      ::Language.all
    end
  end
end
