class CommentSerializer < ActiveModel::Serializer
  attributes :body, :commenter_name
end
