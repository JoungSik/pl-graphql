module Types
  class MutationType < Types::BaseObject
    field :language, mutation: Mutations::AddLanguage
  end
end
