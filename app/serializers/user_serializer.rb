class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :security_question, :security_answer, :image, :status
end
