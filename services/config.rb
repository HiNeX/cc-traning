coreo_aws_advisor_alert "ec2-alert-snapshot" do
  action :define
  service :ec2
  display_name "ELB Object Health Check"
  description "Load balancer health check"
  category "Inventory"
  suggested_action "None."
  level "Informational"
  objectives ["snapshots", "snapshots"]
  audit_objects ["snapshot_set.volume_size", "snapshot_set.encrypted"]
  operators [">", "=="]
  alert_when [8, false]
end

coreo_aws_advisor_ec2 "advise-ec2" do
  action :advise
  alerts ["ec2-alert-snapshot"]
  regions ${AUDIT_AWS_ELB_REGIONS}
end