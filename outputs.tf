output "id" {
    description = "ID of the user pool."
    value = var.create_user_pool ? module.user_pool[0].id : ""
}

output "arn" {
    description = "ARN of the user pool."
    value = var.create_user_pool ? module.user_pool[0].arn : ""
}

output "endpoint" {
    description = "Endpoint name of the user pool."
    value = var.create_user_pool ? module.user_pool[0].endpoint : ""
}

output "domain" {
    description = "Holds the domain prefix if the user pool has a domain associated with it."
    value = var.create_user_pool ? module.user_pool[0].domain : ""
}

output "custom_domain" {
    description = "A custom domain name that is provided to Amazon Cognito."
    value = var.create_user_pool ? module.user_pool[0].custom_domain : ""
}

output "domain_aws_account_id" {
    description = "The AWS account ID for the user pool owner."
    value       = var.create_user_pool ? module.user_pool[0].domain_aws_account_id : null
}

output "domain_cdn_arn" {
    description = "The URL of the CloudFront distribution."
    value       = var.create_user_pool ? module.user_pool[0].domain_cdn_arn : null
}

output "domain_s3_bucket" {
    description = "The S3 bucket where the static files for this domain are stored."
    value       = var.create_user_pool ? module.user_pool[0].domain_s3_bucket : null
}

output "domain_app_version" {
    description = "The app version."
    value       = var.create_user_pool ? module.user_pool[0].domain_app_version : null
}

output "app_client_ids" {
    description = "The map of App client IDs"
    value       = var.create_user_pool ? module.user_pool[0].app_client_ids : {}
}