require 'composite_primary_keys'

class Event < ApplicationRecord
  self.table_name = 'event'
  self.primary_keys = :cid, :sid

  has_one :iphdr, :foreign_key => [:cid, :sid]
end