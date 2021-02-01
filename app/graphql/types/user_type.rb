module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    # Array of posts the User created
    field :posts, [Types::PostType], null: true

    # Own Method
    field :posts_count, Integer, null: true

    def posts_count
      object.posts.count
    end

  end
end
