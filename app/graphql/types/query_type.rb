module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator" do
        argument :name,String
      end
    def test_field(name:)
      "Hello World!"
    end

    field :user, [Types::UserType], null:false,
      description: "User" do
        argument :uuid,String,required:true
      end

      def user(uuid:)
        User.where(uid: uuid)
      end
    
    field :users,[Types::UserType],null:false
    def users
      User.all
    end
  end
end
