class RefreshStatePart < ActiveRecord::Base
  require 'acts_as_tenant'

  belongs_to :refresh_state
  belongs_to :tenant

  has_many :clusters
  has_many :cluster_tags
  has_many :containers
  has_many :container_groups
  has_many :container_group_tags
  has_many :container_images
  has_many :container_image_tags
  has_many :container_nodes
  has_many :container_node_tags
  has_many :container_projects
  has_many :container_project_tags
  has_many :container_resource_quotas
  has_many :container_templates
  has_many :container_template_tags
  has_many :datastores
  has_many :datastore_mounts
  has_many :datastore_tags
  has_many :flavors
  has_many :hosts
  has_many :host_tags
  has_many :ipaddresses
  has_many :ipaddress_tags
  has_many :networks
  has_many :network_adapters
  has_many :network_adapter_tags
  has_many :network_tags
  has_many :orchestration_stacks
  has_many :reservations
  has_many :reservation_tags
  has_many :security_groups
  has_many :security_group_tags
  has_many :service_credentials
  has_many :service_credential_types
  has_many :service_instances
  has_many :service_instance_nodes
  has_many :service_instance_node_service_credentials
  has_many :service_inventories
  has_many :service_inventory_tags
  has_many :service_offerings
  has_many :service_offering_icons
  has_many :service_offering_nodes
  has_many :service_offering_node_service_credentials
  has_many :service_offering_service_credentials
  has_many :service_offering_tags
  has_many :service_plans
  has_many :source_regions
  has_many :subnets
  has_many :subnet_tags
  has_many :subscriptions
  has_many :tags
  has_many :vms
  has_many :vm_security_groups
  has_many :vm_tags
  has_many :volumes
  has_many :volume_attachments
  has_many :volume_types
  
  acts_as_tenant(:tenant)
end
