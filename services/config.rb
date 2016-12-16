coreo_aws_advisor_alert "ec2-alert-snapshot" do
  action :define
  service :elb
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