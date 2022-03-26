# --- compute/outputs.tf ---

output "instance" {
  value = aws_instance.mtc_node[*]
  # sensitive = true
}

output "instance_port" {
  # if we use [*] here it would create a list [8000, 8000]
  # so we use [0] because the port is the same regardless of
  # which tg_attach we are inspecting
  value = aws_lb_target_group_attachment.mtc_tg_attach[0].port
}
