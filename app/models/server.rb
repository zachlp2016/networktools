
class Server < ApplicationRecord
  belongs_to :user, required: true
end
