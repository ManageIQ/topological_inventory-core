require "archived_concern"

class ContainerNode < ApplicationRecord
  include ArchivedConcern

  belongs_to :tenant
  belongs_to :source
  belongs_to :refresh_state_part, :optional => true
  belongs_to :lives_on, :polymorphic => true, :optional => true
  has_many   :container_groups

  acts_as_tenant(:tenant)
  acts_as_taggable_on
end
