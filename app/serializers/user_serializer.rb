class UserSerializer < ActiveModel::Serializer
  attributes *User.column_names
end
