

resource "databricks_share" "test" {
  name = "test"
  
  object {
    name                        = "test.test.test"
    data_object_type            = "TABLE"
    history_data_sharing_status = "ENABLED"
    
  }
  
}

resource "databricks_grants" "test_grant" {
  share = databricks_share.test.name
  
  grant {
    principal  = databricks_recipient.test.name
    privileges = [
      "SELECT"
    ]
  }
  
}



resource "databricks_share" "test2" {
  name = "test2"
  
  object {
    name                        = "test.test.test2"
    data_object_type            = "TABLE"
    history_data_sharing_status = "ENABLED"
    
  }
  
}

resource "databricks_grants" "test2_grant" {
  share = databricks_share.test2.name
  
  grant {
    principal  = databricks_recipient.test.name
    privileges = [
      "SELECT"
    ]
  }
  
}

