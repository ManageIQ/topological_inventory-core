require "archived_concern"

class ContainerTemplate < ApplicationRecord
  include ArchivedConcern

  belongs_to :tenant
  belongs_to :source
  belongs_to :refresh_state_part, :optional => true
  belongs_to :container_project

  acts_as_tenant(:tenant)
  acts_as_taggable_on
end
