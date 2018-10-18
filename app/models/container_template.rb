require "archived_concern"

class ContainerTemplate < ApplicationRecord
  include ArchivedConcern

  belongs_to :tenant
  belongs_to :source
  belongs_to :container_project
end
