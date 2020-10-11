module Types
  class MutationType < Types::BaseObject
    field :add_language, mutation: Mutations::AddLanguage
  end
end
