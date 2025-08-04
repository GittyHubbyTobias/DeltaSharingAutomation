### These are shares for Delta-sharing

resource "databricks_recipient" "recipient-data01" {
  name                = "Data-01"
  comment             = "This is a test user for DATA-01."
  authentication_type = "TOKEN"
  properties_kvpairs {
    properties = {
      "customerId"            = "1001"
      "retailer_id_streaem"   = "1"
      "advertiser_id_streaem" = "13"
      "advertiser_id_gam"     = "5146057134"
    }
  }
}

resource "databricks_recipient" "mdlz" {
  name                = "mdlz"
  comment             = "Data share for Mondelēz International, Inc. (NASDAQ: MDLZ) is one of the world's largest snacks companies, empowering people to snack right in over 150 countries."
  authentication_type = "TOKEN"
  properties_kvpairs {
    properties = {
      "contact_email"         = "Dimitri.DeVadder@mdlz.com"
      "advertiser_id_gam"     = "5146057134"
      "advertiser_id_streaem" = "13"
    }
  }
}