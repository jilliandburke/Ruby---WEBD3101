module Lab2Engine
  class Message < ActiveRecord::Base
    has_many :comments
  end
end
