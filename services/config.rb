coreo_aws_advistor_alert "elb-inventory" do
  alert :define
  service :elb
  display_name "ELB Object Inventory"
  description "Load balancer health check is greater then 2 min"
  category "Inventory"
  suggested_action "None."
  level "Informational"
  objectives ["load_balancers"]
  audit_objects ["load_balancer_descriptions.health_check.interval"]
  operators [">"]
  alert_when [120]
end