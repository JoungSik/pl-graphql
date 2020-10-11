module Types::Models
  class LanguageAttributes < Types::BaseInputObject
    description "Attributes for creating or updating a language"

    argument :name, String, required: true
    argument :extension, String, required: true
  end
end
