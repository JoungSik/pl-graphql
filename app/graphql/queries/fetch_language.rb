module Queries
  class FetchLanguage < Queries::BaseQuery
    type Types::LanguageType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Language.find(id)

    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Language does not exist.')
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
        " #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
