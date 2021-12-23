data "datadog_role" "ro_role" {
  filter = "Datadog Read Only Role"
}

data "datadog_role" "standard_role" {
  filter = "Datadog Standard Role"
}

data "datadog_role" "admin" {
  filter = "Datadog Admin Role"
}

locals {

  ro_users = {



  }

  standard_users = {




  }

  admin_users = {



  }
}



resource "datadog_user" "ro_role" {
  for_each = local.ro_users
  email    = each.key
  name     = each.value
  roles    = [data.datadog_role.ro_role.id]
}

resource "datadog_user" "standard_role" {
  for_each = local.standard_users
  email    = each.key
  name     = each.value
  roles    = [data.datadog_role.standard_role.id]
}

resource "datadog_user" "admin" {
  for_each = local.admin_users
  email    = each.key
  name     = each.value
  roles    = [data.datadog_role.admin.id]
}
