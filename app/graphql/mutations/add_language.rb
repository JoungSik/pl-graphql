module Mutations
  class AddLanguage < Mutations::BaseMutation
    argument :params, Types::Models::LanguageAttributes, required: true

    field :language, Types::Models::LanguageType, null: false

    def resolve(params:)
      language_params = Hash params

      begin
        language = Language.create!(language_params)

        { language: language }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end
