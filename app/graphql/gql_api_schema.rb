class GqlApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST

  # rescue_from(ActiveRecord::RecordNotFound) do |err, obj, args, ctx, field|
  #   # Raise a graphql-friendly error with a custom message
  #   raise GraphQL::ExecutionError, "#{field} not found"
  # end

  # Add built-in connections for pagination
  use GraphQL::Pagination::Connections
end
