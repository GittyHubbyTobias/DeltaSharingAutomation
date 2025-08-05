

resource "databricks_recipient" "groupm_unilever" {
  name                = "groupm_unilever"
  comment             = "Data share for Unilever"
  authentication_type = "TOKEN"
  

  properties_kvpairs {
    properties = {
    
      "contact_email" = "jim@company.com"
    
      "advertiser_id_gam" = "123456"
    
    }
  }
}

