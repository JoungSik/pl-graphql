module Types
  module Input
    class LanguageInputType < Types::BaseInputObject
      argument :name, String, required: true
      argument :extension, String, required: true
    end
  end
end