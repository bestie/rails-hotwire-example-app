class HotTake < ApplicationRecord
  validates_presence_of :handle
  validates_presence_of :content
end
