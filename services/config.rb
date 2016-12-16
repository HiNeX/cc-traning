coreo_aws_advisor_alert "cc-roman-training" do
  action :define
  service :elb
  display_name "ELB Object Health Check"
  description "Load balancer health check"
  category "Inventory"
  suggested_action "None."
  level "Informational"
  objectives ["load_balancers"]
  audit_objects ["load_balancer_description.health_check.interval"]
  operators [">"]
  alert_when [120]
end

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

coreo_aws_advisor_elb "cc-roman-training" do
  action :advise
  alerts ${ELB_ALERTS}
  regions ${ELB_REGIONS}
end