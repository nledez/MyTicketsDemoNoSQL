class Ticket < ActiveRecord::Base
  has_one :status
end
