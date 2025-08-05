

resource "databricks_share" "demo_share" {
  name = "demo_share"
  
  object {
    name                        = "marketing.ssa_retail_media.delta_sharing_demo"
    data_object_type            = "TABLE"
    history_data_sharing_status = "ENABLED"
    
  }
  
}

resource "databricks_grants" "demo_share_grant" {
  share = databricks_share.demo_share.name
  
  grant {
    principal  = databricks_recipient.groupm_unilever.name
    privileges = [
      "SELECT"
    ]
  }
  
}

