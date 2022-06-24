module Mutations
    class CreateUser < Mutations::BaseMutation
        graphql_name "CreateUser"
        
        field :user, Types::UserType,null:true 
        argument :uid,String,required:true
        argument :name,String,required:true
        argument :avatar,String,required:true
        
        def resolve(**args)
            user=User.create!(args)
            {user:user}
        end
    end
end
