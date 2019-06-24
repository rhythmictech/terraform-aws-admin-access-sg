output "admin_access_sg_id" {
  description = "The ID of the Admin Access SG"
  value       = aws_security_group.admin_access.id
}

