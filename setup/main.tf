
resource "azuread_application_registration" "authorized_1" {
  display_name = "example-authorized-app-1"
}

resource "azuread_application_registration" "authorized_2" {
  display_name = "example-authorized-app-2"
}

resource "azuread_application" "authorizer" {
  display_name = "example-authorizing-app"

  api {
    oauth2_permission_scope {
      admin_consent_description  = "Administer the application"
      admin_consent_display_name = "Administer"
      enabled                    = true
      id                         = "11111111-1111-1111-1111-111111111111"
      type                       = "Admin"
      value                      = "administer"
    }
  }
}