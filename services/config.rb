coreo_aws_advistor_alert "alert_from_my_heart" do
  alert :define
  service :elb
  display_name "ELB Object Inventory"
  description "Description"
  level "Informational"
  objectives ["load_balancers"]
  audit_objects ["load_balancer_description.health_check.interval"]
  operators [">"]
  alert_when [120]
end