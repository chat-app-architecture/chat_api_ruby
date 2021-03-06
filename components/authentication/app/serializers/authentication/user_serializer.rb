# frozen_string_literal: true

module Authentication
  class UserSerializer < ActiveModel::Serializer
    attributes :id,
               :email,
               :created_at,
               :updated_at
  end
end
