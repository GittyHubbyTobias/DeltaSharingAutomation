###################### delta sharing onboarding document ###########################

resource "databricks_share" "onboarding_share" {
  name = "onboarding_share"
  object {
    name                        = "sandbox.balakrishnanarumugam.delta_sharing_table"
    data_object_type            = "TABLE"
    history_data_sharing_status = "ENABLED"
    partition {
      value {
        name                   = "CustomerID"
        op                     = "EQUAL"
        recipient_property_key = "customerId"
      }
    }
  }
}


resource "databricks_grants" "onboarding_share_grant" {
  share = databricks_share.onboarding_share.name
  grant {
    principal  = databricks_recipient.recipient_dataplatform.name
    privileges = ["SELECT"]
  }
  grant {
      principal  = databricks_recipient.recipient_dataplatform.name
      privileges = ["SELECT"]
   }
}
