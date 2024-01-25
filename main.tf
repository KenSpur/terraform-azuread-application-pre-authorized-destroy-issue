data "azuread_application" "authorized_1" {
  display_name = "example-authorized-app-1"
}

data "azuread_application" "authorized_2" {
  display_name = "example-authorized-app-2"
}

data "azuread_application" "authorizer" {
  display_name = "example-authorizing-app"
}

resource "azuread_application_pre_authorized" "authorize_1" {
  application_id       = data.azuread_application.authorizer.id
  authorized_client_id = data.azuread_application.authorized_1.client_id

  permission_ids = [
    "11111111-1111-1111-1111-111111111111",
  ]
}

resource "azuread_application_pre_authorized" "authorize_2" {
  application_id       = data.azuread_application.authorizer.id
  authorized_client_id = data.azuread_application.authorized_2.client_id

  permission_ids = [
    "11111111-1111-1111-1111-111111111111",
  ]
}