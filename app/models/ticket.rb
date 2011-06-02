class Ticket < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :status
  belongs_to :status
end
