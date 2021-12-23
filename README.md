# access-datadog

Configuration controlling Datadog access based on permission groups.

## Instructions

To add additional users to Datadog access, add their email address and name in the format shown below. This will allow automation to analyse any changes in configuration, and add the user to organizational settings within Datadog.

Example of adding user bob with email/userid 'bob@getshogun.com':

locals {

ro_users = {

}

standard_users = {

}

admin_users = {
"bob@getshogun.com" = "Bob Both"

}
}
