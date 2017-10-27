QueryType = GraphQL::ObjectType.define do
  name "Query"
  description "The query root for this schema"

  field :movie do
    type MovieType
    argument :id, !Types.ID
    resolve -> (obj, args, ctx) {
      Movie.find(args[:id])
    }
  end

  field :actor do
    type ActorType
    argument :id, !Types.ID
    resolve -> (obj, args, ctx) {
      Actor.find(args[:id])
    }
  end
end