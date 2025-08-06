

resource "databricks_recipient" "groupm_test" {
  name                = "groupm_test"
  comment             = "Data share for Test"
  authentication_type = "TOKEN"
  

  properties_kvpairs {
    properties = {
    
      "contact_email" = "jimy@company.com"
    
      "advertiser_id_gam" = "123456"
    
    }
  }
}

