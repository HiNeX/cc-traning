coreo_aws_advistor_alert "elb-inventory" do
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

coreo_aws_advisor_elb "elb-inventory" do
  action :advise
  alerts ["roman"]
end