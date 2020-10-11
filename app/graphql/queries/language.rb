module Queries
  class Language < Queries::BaseQuery
    description 'get language by id'

    type Types::Models::LanguageType, null: false
    argument :id, Integer, required: false

    def resolve(id:)
      ::Language.find(id)
    end
  end
end

